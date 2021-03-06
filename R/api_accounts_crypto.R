#' RobinHood API: User Crypto
#'
#' Backend function which calls the Nummus API to return the account id.
#'
#' @param RH object of class RobinHood
#' @import httr magrittr
#' 
api_accounts_crypto <- function(RH) {

  # URL and token
  url <- api_endpoints("accounts", "crypto")
  token <- paste("Bearer", RH$tokens.access_token)

  # GET call
  dta <- GET(url,
             add_headers("Accept" = "application/json",
                         "Content-Type" = "application/json",
                         "Authorization" = token))

  # format return
  dta <- mod_json(dta, "fromJSON")
  dta <- as.list(dta$results)

  dta$updated_at <- lubridate::ymd_hms(dta$updated_at)

  return(dta)
}
