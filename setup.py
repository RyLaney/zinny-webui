"""setup.py for the Zinny WebUI package."""
from setuptools import setup, find_packages

# pylint: disable=line-too-long

setup(
    name="zinny-webui",
    version="0.2.0",
    packages=find_packages(where="src"),
    package_dir={"zinny_webui": "src/zinny_webui"},
    include_package_data=True,
    entry_points={
        "console_scripts": [
            "zinny-webui=main:main",
        ]
    },
    install_requires=[
        "flask",
        "jinja2",
        "zinny-surveys",
        "zinny-api",
    ],
    extras_require={
        "dev": [
            "setuptools",
            "wheel",
            "pytest",
            "black",
        ]
    },
    description="Zinny is an app designed to evaluate titles using surveys. This is the APU for the Zinny app.",
    author="Ryan Laney",
    url="https://github.com/RyLaney/zinny-webui",
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: BSD License",
        "Operating System :: OS Independent",
    ],
    python_requires=">=3.11",
    license='BSD License',

)
