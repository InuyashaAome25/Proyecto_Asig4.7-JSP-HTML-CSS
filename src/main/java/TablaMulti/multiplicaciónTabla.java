package TablaMulti;

public class multiplicaciónTabla {
    private int numero;
    private int limite =0;

    public int getLimite() {
        return limite;
    }

    public void setLimite(int limite) {
        this.limite = limite;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String generarMulti(int numero, int limite){
        StringBuilder producto = new StringBuilder();
        for (int i=numero; i<=limite; i++){
            producto.append("<h2>Tabla del ").append(i).append("</h2>");
            for (int k=1; k<=10; k++){
                producto.append("<tr><td>").append(i).append(" x ").append(k).append("</td><td>").append(i * k).append("</td></tr>");
            }
            producto.append("</table>");
        }
        return producto.toString();
    }
}
