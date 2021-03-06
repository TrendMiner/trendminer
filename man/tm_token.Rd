% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/authentication.R
\name{tm_token}
\alias{tm_token}
\title{Get TrendMiner access token}
\usage{
tm_token(
  client_id = NULL,
  client_secret = NULL,
  usr_name = NULL,
  usr_pwd = NULL,
  base_url = NULL,
  ...
)
}
\arguments{
\item{client_id}{Client identifier issued by the authorization server}

\item{client_secret}{Client secret issued by the authorization server}

\item{usr_name}{Username}

\item{usr_pwd}{User password}

\item{base_url}{TrendMiner base URL}

\item{...}{Additional arguments passed on to the underlying HTTP method.
This might be necessary if you need to set some curl options explicitly
via \code{\link[httr]{config}}.}
}
\value{
A S3 object of class \code{tm_token} (basically a list) with the following
components:
\itemize{
\item \code{access_token} The access token which needs to be used for any subsequent API request
\item \code{token_type} Type of the token which is always "bearer"
\item \code{expires_in} Token expiration time in seconds
\item \code{scope} Character string describing the access scope
\item \code{allowedHistorians} Character string describing the Historians
which can be accessed with the \code{access_token}
\item \code{userId} The user's ID which will be used for any action performed
on the connected TrendMiner instance using the \code{access_token}
\item \code{expiration_date} "POSIXct" object representing the date the token will expire
\item \code{base_url} TrendMiner base URL
}
}
\description{
Requests a Bearer access token from TrendMiner using an OAuth2.0 resource
owner password credentials grant flow.
}
\details{
All requests to the TrendMiner API require authentication. This is achieved
by sending a valid Bearer access token in the request headers. Request tokens
are obtained via OAuth2.0 using the resource owner password credentials flow:
Any client which likes to interact with the API needs to
collect the credentials from the user (username and password) and passes them
together with its own client credentials (client ID and client secret)
to the TrendMiner server. The server responds with an access token which the
user needs to use for any subsequent API requests.

\strong{Note}: You can request your client ID and client secret by contacting
TrendMiner support or your TrendMiner Customer Success Manager.

User credentials, client credentials and the TrendMiner base URL can be passed
as arguments to \code{tm_token()} for quick testing in interactive mode.
However, it is recommended to call \code{tm_token()} without arguments.
In this case \code{tm_token()} will fetch the credentials and the TrendMiner
base URL from the following environment variables stored in
\code{.Renviron} which you can easily edit using \code{usethis::edit_r_environ()}:

\code{TM_client_ID = YOUR_CLIENT_ID_HERE}\cr
\code{TM_secret = YOUR_CLIENT_SECRET_HERE}\cr
\code{TM_usr = YOUR_USER_NAME_HERE}\cr
\code{TM_pwd = YOUR_USER_PASSWORD_HERE}\cr
\code{TM_base_url = YOUR_TM_BASE_URL_HERE}
}
\examples{
\dontrun{
tm_token()
}
}
