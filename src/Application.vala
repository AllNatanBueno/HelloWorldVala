public class MyApp : Gtk.Application {

    public MyApp (){
        Object (
            application_id: "com.github.AllNatanBueno.HelloWorldVala",
            flags: ApplicationFlags.FLAGS_NONE       
        );
    }

    protected override void activate(){
        var main_window = new Gtk.ApplicationWindow(this);
        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = "Hello World";
        
        //Botões
        var button_hello = new Gtk.Button.with_label("Clique Aqui!");
        button_hello.margin = 12;
        button_hello.clicked.connect(() => {
            button_hello.label = "Olá Mundo";
            button_hello.sensitive = false;
        });

        main_window.add(button_hello);
        main_window.show_all();
    }

    public static int main (string[] args){
        var app = new MyApp();
        return app.run(args);
    }

}
