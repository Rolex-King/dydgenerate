class Character < ActiveRecord::Base
 
   belongs_to :user

   validates :nombre_personaje, presence: true,:length => { :minimum => 5 }
   validates :clase, 			presence: true
   validates :raza, 			presence: true
   validates :alineamiento, 	presence: true
   validates :deidad, 			presence: true
   validates :tamaño, 			presence: true
   validates :edad, 			presence: true,:length => { :minimum => 2, :maximum => 2 }
   validates :sexo, 			presence: true
   validates :altura, 			presence: true,:length => { :minimum => 3, :maximum => 3 }
   validates :peso, 			presence: true,:length => { :minimum => 2, :maximum => 3 }
   validates :ojos, 			presence: true,:length => { :minimum => 4, :maximum => 15}
   validates :cabello, 			presence: true,:length => { :minimum => 5, :maximum => 15}
   validates :piel, 			presence: true,:length => { :minimum => 5 }
   validates :history, 			presence: true,:length => { :minimum => 40,:maximum => 250}
   validates :rasgos, 			presence: true,:length => { :minimum => 5, :maximum => 100}
end
