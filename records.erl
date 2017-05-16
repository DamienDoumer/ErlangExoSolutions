- module(records).
- compile(export_all).
- author("Damien Doumer").
- record(robot, {name, type  = transformer, hobbies, details = []}).

optimus_prime() ->
    #robot{name = "Optimus Prime",
           type = extraterestrial,
           hobbies = "Deffend the earth",
            details = ["The leaser of all transformers"]}.

new_transformer(Name) -> 
    #robot{
        name = Name,
        hobbies = "Help Optimus"
    }.