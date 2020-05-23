using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player_control : MonoBehaviour {

    public int speed;
    public static int score = 0;
    public int max;
    int i;
    public AudioSource sound;
    public string sound_name1;
    public string sound_name2;
    public static AudioClip sound_up;
    public static AudioClip sound_RL;
    Rigidbody2D UFO_rigidbody;
    public GameObject door_object;
	// Use this for initialization

    public GameObject X_ray;
    public float shootForce = 10f;


	void Start () {
        UFO_rigidbody = GetComponent<Rigidbody2D>();
        i = 0;
        //score = 0;
        sound = GetComponent<AudioSource>();
        sound_up = Resources.Load<AudioClip>("" + sound_name1 + "");
        sound_RL = Resources.Load<AudioClip>("" + sound_name2 + "");
	}
	
	// Update is called once per frame
	void Update () {
        float input_H = Input.GetAxis("Horizontal");
        float input_V = Input.GetAxis("Vertical");

        if(input_H > 0)
        {
            sound.PlayOneShot(sound_RL);
            GetComponent<Animator>().SetBool("turn_right", true);
        }
        if(input_H < 0)
        {
            sound.PlayOneShot(sound_RL);
            GetComponent<Animator>().SetBool("turn_right", false);
        }
        if (input_V > 0)
        {
            sound.PlayOneShot(sound_up);
            GetComponent<Animator>().SetBool("up", true);
        }
        else
        {
            GetComponent<Animator>().SetBool("up", false);
        }

        Vector2  UFO_move = new Vector2(input_H, input_V);
        UFO_rigidbody.AddForce(UFO_move * speed);

        if (Input.GetKey(KeyCode.Space))
        {
            Vector3 pos = gameObject.transform.position + new Vector3(0, 0.1f, 0);
            Instantiate(X_ray, pos, gameObject.transform.rotation);

            //GameObject bullet = Instantiate(X_ray, transform.position, transform.rotation) as GameObject;
            //bullet.GetComponent<Rigidbody>().AddForce(bullet.transform.forward & shootForce);
        }
	}

	private void OnCollisionExit2D(Collision2D collision)
	{
        if(collision.gameObject.CompareTag("stone"))
        {
            score = score + 10;
            Debug.Log("Score:" + score);
            sound_manager.playsound();
            Destroy(collision.gameObject);
            i++;
            if(i==max)
            {
                Debug.Log("Bingo!");
                door_object.SetActive(true);
            }
        }
	}


	private void OnTriggerEnter2D(Collider2D collision)
	{
        if(collision.tag == "fruit")
        {
            sound_manager.playsound();
            score = score + 10;
            Debug.Log("Score:" + score);
            Destroy(collision.gameObject);
        }
	}
}
