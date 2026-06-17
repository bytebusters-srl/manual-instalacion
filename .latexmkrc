# Configuración global de compilación para LaTeX (Manual de Instalación)

# 1. Enviar toda la salida a la carpeta build/
$out_dir = 'build';

# 1b. Espejar la estructura de sections/ dentro de build/ ANTES de compilar.
use File::Path qw(make_path);
foreach my $sub (qw(
    front cap01 cap02 cap03 cap04 cap05 cap06 cap07 cap08 cap09 anexos
)) {
    make_path("$out_dir/sections/$sub");
}

# 2. Forzar compilación en PDF
$pdf_mode = 1;

# 2b. Más pasadas: longtable + lastpage requieren iteraciones extra.
$max_repeat = 7;

# 3. Wrapper de pdflatex que normaliza el código de salida: si el PDF se
# escribió ("Output written on"), un "Rerun" pendiente NO se considera fallo.
$pdflatex = 'internal mypdflatex %O %S';
sub mypdflatex {
    my @args = @_;
    my $ret = system('pdflatex', '-interaction=nonstopmode',
                     '-synctex=1', '-shell-escape', @args);
    my $base = $args[-1];
    $base =~ s/\.tex$//;
    $base =~ s{.*/}{};
    my $log = "$out_dir/$base.log";
    if ($ret != 0 && -e $log) {
        open(my $fh, '<', $log) or return $ret;
        local $/; my $content = <$fh>; close($fh);
        return 0 if $content =~ /Output written on/;
    }
    return $ret;
}

# 4. Extensiones a limpiar
$clean_ext = 'aux out log toc bbl blg synctex.gz fls fdb_latexmk vrb snm nav run.xml bcf pyg _minted*';
