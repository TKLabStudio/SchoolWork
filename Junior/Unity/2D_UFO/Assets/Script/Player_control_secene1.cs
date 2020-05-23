using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player_control_secene1 : MonoBehaviour
{
    public int speed;
    Rigidbody2D UFO_rigidbody;
    public int stone_number;
    int i;
    public GameObject door_object;
    public static int score= 0 ;
    static AudioSource audioSrc;
    // Start is called before the first frame update
    void Start()
    {
        UFO_rigidbody = GetComponent<Rigidbody2D>();
        i = 0;
        // score = 0;
        
    }

    // Update is called once per frame
    void Update()
    {
        float input_H = Input.GetAxis("Horizontal");
        float input_V = Input.GetAxis("Vertical");
        
        Vector2 UFO_move = new Vector2(input_H, input_V);
        UFO_rigidbody.AddForce (UFO_move*speed);
    }

    void OnCollisionEnter2D(Collision2D collision_target) 
    {
        if (collision_target.gameObject.CompareTag("stone"))
        {
            score = score + 10;
            Debug.Log("Score: " + score);

            Sound_Manager.playSound1();
            Destroy(collision_target.gameObject);
            i = i + 1;   // i++; 
            if (i == stone_number) 
            {
                
                door_object.SetActive(true);
            }
        }
    }

   
}
