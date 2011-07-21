<cfsilent>
<cfscript>
/**
 * Deals with ugly date format returned by Twitter API and returns CF date 
 * As of May 2009 the Twitter REST API and Search API return different date formats
 * http://code.google.com/p/twitter-api/issues/detail?id=206
 * 
 * @param tdate Date to be modified. (Required)
 * @return Returns a CF date. 
 * @author Mark Kecko (mark@mediapost.com)
 * @version 1, May 19, 2009 
 */
	function ParseTwitterDate (tdate, mode) {
		if (not len(mode)) 
			mode = 'REST';
		
		formatter = CreateObject("java", "java.text.SimpleDateFormat");
		
		if (mode IS "search")
			formatter.init("EEE, dd MMM yyyy HH:mm:ss Z");  // Sat, 16 May 2009 05:26:32 +0000
		else
			formatter.init("EEE MMM dd HH:mm:ss Z yyyy");  // Tue May 12 19:15:48 +0000 2009
		
  	parsePosition = CreateObject("java", "java.text.ParsePosition");
  	parsePosition.init(0);
 	  parsedDate = formatter.parse(tdate, parsePosition);
		return parsedDate;
	}
</cfscript>
</cfsilent>