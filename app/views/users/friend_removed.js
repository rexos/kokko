alert('Amico rimosso dalla lista con successo!');
$('#'+<%= escape_javascript(@removed_id.to_s) %>).fadeOut('fast');