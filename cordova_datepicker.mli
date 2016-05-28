(* -------------------------------------------------------------------------- *)
type mode =
  | Date [@js "date"]
  | Time [@js "time"]
  | Datetime [@js "datetime"]
  [@@js.enum]

type android_theme =
  | Theme_traditional [@js 1]
  | Theme_holo_dark [@js 2]
  | Theme_holo_light [@js 3]
  | Theme_device_default_dark [@js 4]
  | Theme_device_default_light [@js 5]
  [@@js.enum]

type arrow_direction =
  | Up [@js 1]
  | Down [@js 2]
  | Left [@js 4]
  | Right [@js 8]
  | Any [@js 15]
  [@@js.enum]

type options = private Ojs.t

val create_options :  ?mode:(mode [@js.default Date])                 ->
                      ?date:(Js_date.t [@js.default Js_date.now ()])  ->
                      ?min_date:Js_date.t                             ->
                      ?max_date:Js_date.t                             ->
                      ?title_text:string                              ->
                      ?ok_text:string                                 ->
                      ?now_text:string                                ->
                      ?is_24_hour:bool                                ->
                      ?android_theme:android_theme                    ->
                      ?allow_old_dates:bool                           ->
                      ?allow_future_dates:bool                        ->
                      ?done_button_label:string                       ->
                      ?done_button_color:string                       ->
                      ?cancel_button_label:string                     ->
                      ?cancel_button_color:string                     ->
                      ?x:int                                          ->
                      ?y:int                                          ->
                      ?minute_interval:int                            ->
                      ?popover_arrow_direction:arrow_direction        ->
                      ?locale:string                                  ->
                      unit                                            ->
                      options
[@@js.builder]
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
class date_picker : Ojs.t ->
  object
    inherit Ojs.obj

    method show : ?options:(options [@js.default create_options ()])  ->
                  (Js_date.t -> unit)                                 ->
                  (string -> unit)                                    ->
                  unit
  end
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
val t : unit -> date_picker
[@@js.get "datePicker"]
(* -------------------------------------------------------------------------- *)
