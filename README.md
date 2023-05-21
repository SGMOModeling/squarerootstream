# squarerootstream

SquareRootStream - IWFM utility program to calculate the square root of stream flows from the model

## Usage

program_name <input_file> <output_file>

```bash
SquareRootStream STR_OUT.out SQRTSTR_OUT.out
```

## Notes

SquareRootStream assumes the format of the input file is fixed with the first 40 characters being a string and the next 20 characters being a floating point number (a fortran 'real') with up to 2 decimal places. Deviations from this format may have mixed results.

SquareRootStream is intended to be run after IWFM2OBS when simulation results for streamflow hydrographs have been formatted from
the default IWFM format to PEST SMP format

| Name | Date | Time | Value |
