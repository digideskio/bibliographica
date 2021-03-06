#' @title Identify multi volume docs
#' @description Identify documents that can be considered multi-volume; based on other document info.
#' @details This function is used only to estimate pagecounts for documents with missing page count information.
#' Therefore no page count is considered in assessing the issue status.
#' @param df data.frame of documents x variables
#' @return Logical vector indicating the multi-volume docs
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("bibliographica")
#' @export
#' @examples \dontrun{issue <- is.multivol(df)}
#' @keywords utilities
is.multivol <- function (df) {

  # All multi-volume docs	    
  inds0 <- (df$volcount > 1)
  
  # Also include docs with a volnumber:
  # those should be multi-volume docs anyway
  inds1 <- !is.na(df$volnumber)

  # Default multi-vol docs are now:
  inds <- inds0 | inds1

  # And only include docs with available gatherings info
  inds <- inds & !is.na(df$gatherings)

  # Exclude large documents 
  rm.gatherings <- c("1to", "2small", "2to", "2long", "4small", "4to", "4long")
  inds <- inds & (!df$gatherings %in% rm.gatherings)

  # Only include docs with <=10 volumes since
  # docs with more volumes are likely not
  # following average volume-wise page counts
  inds <- inds & (df$volcount <= 10)

  # Mark NAs as FALSE
  inds[is.na(inds)] <- FALSE

  inds

}


