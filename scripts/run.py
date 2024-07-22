#!/usr/bin/env python3

import os
import subprocess
import datetime


# print new line
def pl():
    return print("")


def get_files():
    find_command = """
    find ~/projects -type f -mmin -100 -exec ls -lt --time-style=+'%Y-%m-%d %T' {} + |
    sort -rk6,7
"""
    raw_input_allfiles = subprocess.getoutput(find_command).strip()
    if not raw_input_allfiles:
        raise FileNotFoundError("No files found in the specified time range.")
    # print(f"All files: {raw_input_allfiles}")
    # pl()
    return raw_input_allfiles


def get_current_time():
    current_time = datetime.datetime.now().strftime("%Y-%m-%d %T")

    # print(f"Current time: {current_time}")
    # pl()
    return current_time


def get_latest_file():
    raw_input_allfiles = get_files()
    current_time = get_current_time()

    for line in raw_input_allfiles.split("\n"):
        file_time = " ".join(line.split()[5:7])
        # print(f"File time: {file_time}")
        # pl()
        if file_time < current_time:
            return line.split()[-1]
            # print(f"Latest file: {line.split()[-1]} file time: {file_time}")
            # pl()

    raise FileNotFoundError("No files found before the current time.")


def get_file_info(file_path):
    file_name = os.path.basename(file_path)
    file_extension = file_name.split(".")[-1]
    file_name_without_extension = os.path.splitext(file_name)[0]
    # print(f"File name: {file_name}")
    # print(f"File extension: {file_extension}")
    # print(f"File name without extension: {file_name_without_extension}")
    # pl()
    if file_name == "index ":
        raise FileNotFoundError("write something new in the file")
    else:
        return file_name, file_extension, file_name_without_extension


def execute_file(file_path, file_extension, file_name_without_extension):
    if file_name_without_extension == "index":
        print("index file found \nplease write something new in the file")
    else:
        commands = {
            "py": f"python {file_path}",
            "go": f"go run {file_path}",
            "js": f"bun run {file_path}",
            "ts": f"bun run {file_path}",
            "c": f"g++ {file_path} && ./a.out",
            "cpp": f"g++ {file_path} && ./a.out",
            "out": f"./{file_path}",
            "java": f"javac {file_path}",
            "lua": f"lua {file_path}",
            "sh": f"bash {file_path}",
            "rs": f"rustc {file_path} && ./{file_name_without_extension}",
        }
        command = commands.get(
            file_extension,
            f"echo Unsupported file type\necho -e '\n{file_path.split()[-1]}'",
        )
        # print(f"Command: {command}")
        # pl()
        subprocess.run(command, shell=True)


def main():
    raw_input = get_latest_file()
    # print(f"Latest file: {raw_input}")
    file_name, file_extension, file_name_without_extension = get_file_info(raw_input)
    execute_file(raw_input, file_extension, file_name_without_extension)

    print(
        f"""
        \n--- ---
        \n{file_name}
        """
    )


main()
