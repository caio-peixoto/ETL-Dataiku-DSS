load.dbc <- function(files){
  require(read.dbc)
  
  df_from_DBC=data.frame()
  
  for(f in files){
    # Compute a data frame for the output to write
    bind_rows( df_from_DBC, read.dbc(f) ) -> df_from_DBC
  }
  return(df_from_DBC)
}
