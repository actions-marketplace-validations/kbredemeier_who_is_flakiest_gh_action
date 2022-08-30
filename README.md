# Who Is Flakiest? Github Action

This action uploads your JUnit test reports to [whoisflakiest.dev](https://whoisflakiest.dev).

## Usage

Add the action after the step that generates your JUnit test reports.

```yaml
steps:
  - name: Report Test Results
    uses: kbredemeier/who-is-flakiest-gh-action@v1
    with:
      api_token: ${{ secrets.WIF_API_TOKEN }}
      path_to_reports_dir: "./path/to/junit_reports"
```
