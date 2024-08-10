# Deno Template 🦕

This is a template for a Deno projects, with pre-commit hooks for commit messages and code formatting.

## Requirements

- [Deno](https://deno.com/manual/getting_started/installation)
- [Deno Docs](https://docs.deno.com/runtime/)
- [Conventional Commits](https://l.dotarvid.com/cc)

## Getting started

### Install Deno

#### MacOS/Linux

```bash
curl -fsSL https://deno.land/x/install/install.sh | sh
```

#### Windows (Powershell)

```bash
irm https://deno.land/install.ps1 | iex
```

## Install pre-commits

```bash
deno task hook install
```

### Running a Deno script (example)

```bash
deno run --allow-env --env --allow-net --watch src/main.ts
```

## Environment variables

### How to use .env files

In this repository there is a file called .env.example. This file should be copied to the folder where the script is run.

```bash
cp .env.example .env
```
