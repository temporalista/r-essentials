load_gdrive_xlsx <- function(google_file_url){
    g_link = google_file_url 
    file_id = substr(g_link, regexpr("/d/", g_link) + 3 ,  regexpr("/view", g_link) -1 )
    url =  paste("https://drive.google.com/uc?export=download&id=", file_id, sep="")
    download.file(url, "file.sav")
    df <- read.spss("file.sav", use.value.label=TRUE, to.data.frame=TRUE)
    return(df)
}
