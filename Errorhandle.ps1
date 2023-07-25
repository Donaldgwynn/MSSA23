try {get-childitem e:\dog.txt -ErrorAction Stop}
catch [system.management.automation.itemnotfoundexception] {"File not found"}
catch {"Another error happened"}