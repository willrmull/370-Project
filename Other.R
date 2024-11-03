
diff <- data

results_diff <- data.frame(matrix(NA, nrow = length(seq(1:35)), 
                                  ncol = length(seq(1:1))))
for (rowIdx in 1:nrow(results_diff)) {
  for (colIdx in 1:ncol(results_diff)) {
    results_diff[rowIdx, colIdx] <- ((( diff$Bottom[rowIdx]-26.6667)^2)/26.6667) # or whatever value you want here
  }
}

diff$resultsbot <- results_diff$matrix.NA..nrow...length.seq.1.35....ncol...length.seq.1.1...
sum(diff$resultsbot)

results_diff <- data.frame(matrix(NA, nrow = length(seq(1:35)), 
                                  ncol = length(seq(1:1))))
for (rowIdx in 1:nrow(results_diff)) {
  for (colIdx in 1:ncol(results_diff)) {
    results_diff[rowIdx, colIdx] <- ((( diff$Top[rowIdx]-26.6667)^2)/26.6667) # or whatever value you want here
  }
}

diff$resultstop <- results_diff$matrix.NA..nrow...length.seq.1.35....ncol...length.seq.1.1...
sum(diff$results)
