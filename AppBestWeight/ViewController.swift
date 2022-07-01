import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var x: UITextField!
    
    @IBOutlet weak var y: UITextField!
    
    @IBOutlet weak var z: UILabel!
    
    @IBOutlet weak var f: UIPickerView!
    
    @IBOutlet weak var i: UILabel!
    
    var gender=["Male","Female"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    var selectiongender=0
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        selectiongender=row
        return gender[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        return i.text = gender[row]
    }
    @IBAction func Bestweight(_ sender: UIButton)
    {
        let a:Int=Int(x.text!)!
        let b:Int=Int(y.text!)!
        var w = b-100 + a/5
        if selectiongender == 1
        {
            w = w+10
            z.text="Your Weight should be :\(w)"
        }
        else
        {
            w = w-10
            z.text="Your Weight should be :\(w)"
            
        }
    
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
    


