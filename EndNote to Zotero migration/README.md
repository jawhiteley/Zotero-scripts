# Migrating EndNote Library to Zotero

These are scripts and custom settings for migrating my library from EndNote to Zotero (on a Mac). 
There should be no manual processing (find/replace) necessary with this workflow: the scripts do it all automatically.
I recommend testing with a small group of records of various types to make sure it works as expected.


1. Export file attachments (optional): `EndNote batch export attachments.scpt`
  * ApplescriptL Export all attachments to a single folder. 
    Optional, but helps keep things organized, especially if you want all your pdfs in a single folder.
    Also helps remove orphaned and missing files.
2. Convert EndNote groups (folders) into keywords: `EndNote folders -> keywords.scpt`
  * AppleScript: Convert EndNote folders / groups to keywords with a custom prefix.
    This allows you to take your groups with you.
3. Export using to custom RIS output style: `RIS export to Zotero - jaw.ens`
  * Custom output style for EndNote.
  * Based on RIS, but handles my custom fields (labels, location, context).
4. Import RIS file created above into Zotero using custom translator: `RIS-EndNote.js`
  * Translator for Zotero (put it in your `zotero/translators/` folder).
  * Handles custom fields, and puts 'labels' (bibtex citation keys) into the `extra` field in Zotero.
  * Converts other custom fields into tags with a custom prefix.
  * Even converts EndNote pdf links (`internal-pdf://`) into relative paths (from the RIS file being imported): check to ensure the path points to the folder from step 1.


Feel free to adapt it to your needs, but be aware that these are designed for my custom EndNote set-up.


## My Custom EndNote set-up

* I used the 'Label' field in EndNote to store stable citation keys (generated automatically using AppleScript and/or manually edited).
* I used the 'Custom 7' field for 'Location' of the full-text document: i.e., where is the document, and what format is it in? (e.g., electronic, paper, library, inter-library loan, etc.)
* I used the 'Custom 8' field for 'Context': the project or activity for which I imported the reference. i.e., why is this in my library?

I chose to export the 'Context' and 'Location' fields to tags with custom prefixes to group them together.


