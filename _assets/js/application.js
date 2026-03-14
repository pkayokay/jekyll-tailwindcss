import { Application } from "@hotwired/stimulus"

const Stimulus = Application.start()

// Register controllers here
import HelloController from "./controllers/hello_controller"
Stimulus.register("hello", HelloController)
