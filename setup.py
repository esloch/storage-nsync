from setuptools import find_packages, setup

with open("README.md", "r") as fh:
    long_description = fh.read()


def read(filename):
    return [req.strip() for req in open(filename).readlines()]


setup(
    name="CronSync",
    version="0.1.0",
    author="esloch",
    author_email="es.lcoh@gmail.com@gmail.com",
    description="Schedules the sincronization",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/esloch/cronsync.git",
    packages=find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: GPL V3 License",
        "Operating System :: Linux",
    ],
    python_requires='>=3.7',
    install_requires=read("requirements.txt"),
)
