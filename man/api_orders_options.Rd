% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api_orders_options.R
\name{api_orders_options}
\alias{api_orders_options}
\title{RobinHood API: Option Orders}
\usage{
api_orders_options(
  RH,
  action,
  status_url = NULL,
  cancel_url = NULL,
  quantity = NULL,
  direction = NULL,
  stop_price = NULL,
  type = NULL,
  time_in_force = NULL,
  side = NULL,
  option_id = NULL
)
}
\arguments{
\item{RH}{object of class RobinHood}

\item{action}{(string) one of "order", "status", "cancel", "history"}

\item{status_url}{(string) if action = "status", status_url is required (output from place_order_options())}

\item{cancel_url}{(string) if action = "cancel", cancel_url is required (output from place_order_options())}

\item{quantity}{(int) number of contracts you want to buy}

\item{direction}{(string) one of "debit" or "credit"}

\item{stop_price}{(numeric) stop price on a limit order}

\item{type}{(string) one of "limit" or "market"}

\item{time_in_force}{(string) Good Till Canceled ("gtc"), Immediate or Cancel ("ioc"), or Opening ("opg")}

\item{side}{(string) one of "buy" or "sell"}

\item{option_id}{(string) id column returned by get_contracts()}
}
\description{
RobinHood API: Option Orders
}
