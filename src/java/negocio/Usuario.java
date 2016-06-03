package negocio;

import accesodato.Coneccion;

public class Usuario {
   private int usuario_id;
   private String nombre;
   private String apepat;
   private String telefono;
   private String estado;
    Coneccion con;
    public Usuario() {
        con=new Coneccion();
    }
   
    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApepat() {
        return apepat;
    }

    public void setApepat(String apepat) {
        this.apepat = apepat;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    public void save(){
        con.setInsertar("insert into Usuarios(nombre,apepat,telefono,estado) values('"+this.getNombre()+"','"+this.getApepat()+"','"+this.getTelefono()+"','activo')");
    }
    public void delete(){
        con.setInsertar("update Usuarios set estado='pasivo' where usuario_id='"+this.getUsuario_id()+"'");
    }
    public void update(){
        con.setInsertar("update Usuarios set nombre='"+this.getNombre()+"',apepat='"+this.getApepat()+"',telefono='"+this.getTelefono()+"' where usuario_id='"+this.getUsuario_id()+"'");
    }
}
