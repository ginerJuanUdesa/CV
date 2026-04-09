$pdf_mode = 1;

# Convert PDF to PNG after successful compilation
sub pdf_to_png {
    my $pdf_name = shift;
    my $base = $pdf_name =~ s/\.pdf$//r;
    system("pdftoppm -png -singlefile '$pdf_name' '$base'");
}

$success_cmd = 'pdftoppm -png -singlefile %B.pdf %B';
