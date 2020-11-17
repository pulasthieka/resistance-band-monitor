# Readme

Values for weights = mean of the range of values selected manually by observation from data cursor in MATLAB

## Test procedure

Weight of a book ~320g

- test1 - loading a single book at a time
- test2 - unloading a single book at a time
- test3 - loading and unloading two books at a time
- test4 - loading and unloading three books at a time. (ignore 4th variation - was unable to remove three books quickly)
- test5 - loading and unloading weights of 1kg in this order 0-1-2-3-2-3-4-3-2

## Filtering

400 point - Moving average filter

## Files

`test[1-5].mat` - cumulative raw data for the tests.
`final.mat` - all data with manual selected regions
`DataProcessing.mat` - code to plot the data.
