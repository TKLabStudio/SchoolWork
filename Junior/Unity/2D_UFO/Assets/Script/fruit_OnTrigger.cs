using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class fruit_OnTrigger : MonoBehaviour
{

    //public static int score=0;
     Slider healthBarSlider;

    // Start is called before the first frame update
    void Start()
    {
    
    }

    // Update is called once per frame
    void OnTriggerEnter2D(Collider2D co_target)
    {
        if (co_target.tag == "R2")
        {
            Sound_Manager.playSound2();
            Player_control.score = Player_control.score + 10;
            Debug.Log("Score: " + Player_control.score);
            
            healthBarSlider = GameObject.FindGameObjectWithTag("Slider").GetComponent<Slider>();
            healthBarSlider.value = healthBarSlider.value + 3;

            if (gameObject == GameObject.Find("fruit_[8]"))
            {
                Destroy(GameObject.Find("stone_wall1")); 
                Destroy(GameObject.Find("stone_wall2"));
            }
            Destroy(gameObject);

            if (Player_control.score >= 90)
            {
                GameObject.Find("door_open").SetActive(true);
            }
        }
    }
}
