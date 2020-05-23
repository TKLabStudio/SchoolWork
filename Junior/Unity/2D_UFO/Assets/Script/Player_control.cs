using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player_control : MonoBehaviour
{
    public int speed;
    Rigidbody2D UFO_rigidbody;
    public int stone_number;
    int i;
    public GameObject door_object;
    public static int score=0;
    static AudioSource audioSrc;
    public string sound_name1;
    public string sound_name2;
    public static AudioClip R2_sound1;
    public static AudioClip R2_sound2;
    // Start is called before the first frame update
    void Start()
    {
        UFO_rigidbody = GetComponent<Rigidbody2D>();
        i = 0;
        audioSrc = GetComponent<AudioSource>();
        R2_sound1 = Resources.Load<AudioClip>("" + sound_name1 + "");
        R2_sound2 = Resources.Load<AudioClip>("" + sound_name2 + "");
    }

    // Update is called once per frame
    void Update()
    {
        float input_H = Input.GetAxis("Horizontal");
        float input_V = Input.GetAxis("Vertical");
        if (input_H > 0) //按了右鍵
        {
            audioSrc.PlayOneShot(R2_sound2);
            GetComponent<Animator>().SetBool("turn_right", true);
        }
        if (input_H < 0) //按了左鍵
        {
            audioSrc.PlayOneShot(R2_sound2);
            GetComponent<Animator>().SetBool("turn_right", false);
        }
        if (input_V > 0) //按了上鍵
        {
            audioSrc.PlayOneShot(R2_sound1);
            //audioSrc.Play();
            GetComponent<Animator>().SetBool("up", true);
        }
        else//按了下鍵
        {
            GetComponent<Animator>().SetBool("up", false);
        }

        Vector2 UFO_move = new Vector2(input_H, input_V);
        UFO_rigidbody.AddForce (UFO_move*speed);
    }

    void OnCollisionEnter2D(Collision2D collision_target) 
    {
        if (collision_target.gameObject.CompareTag("stone"))
        {
            score = score + 10;
            Debug.Log("Score: " + score);

            Sound_Manager.playSound2();
            Destroy(collision_target.gameObject);
            i = i + 1;   // i++; 
            if (i == stone_number) 
            {
                
                door_object.SetActive(true);
            }
        }
    }

   
}
