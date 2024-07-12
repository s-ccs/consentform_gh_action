In order to use this:

1. new file in `.github/workflows/forms.yml`
2. Fill in:

```yml
on:
 push:
  paths:
    project*.toml
    .github/workflows/forms.yml
jobs:
  build-deploy:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        language: 
          - de
          - en
    steps:
      - name: Generate Forms
        uses: s-ccs/consentform_gh_action@main
        with:
         language: ${{ matrix.language }}
```
3. Have a `project_*.toml` file in your root directory.

The toml file currently needs the following fields:


**TBD**
