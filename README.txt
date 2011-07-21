Usage:
ParseTwitterDate(date, mode['REST','search'])

The Twitter API is great. Except for the dates it returns, especially if you're a
ColdFusion progammer. I ended up using some code posted by Peter Freitag to 
write a UDF to convert the Twitter date/time to a ColdFusion friendly date/time.  

Twitter makes matters worse with it's inconsistency between the REST 
and Search APIs. My UDF also deals with the different date formats 
returned by the Twitter APIs. 

Search API returns: Sat, 16 May 2009 05:26:32 +0000
REST API returns: Sat May 16 05:26:32 +0000 2009 

*As of May 2009 the Twitter REST API and Search API still return 
different date formats. http://code.google.com/p/twitter-api/issues/detail?id=206
