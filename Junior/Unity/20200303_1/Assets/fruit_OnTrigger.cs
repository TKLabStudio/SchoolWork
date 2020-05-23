using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine;

public class fruit_OnTrigger : MonoBehaviour
{
    static AudioClip colsound;
    public AudioSource sound;
    public static int score;
    public GameObject NPC_object;
    Slider healthBarSlider;
    // Start is called before the first frame update
    void Start()
    {
        sound = GetComponent<AudioSource>();
        score = 0;
    }

    // Update is called once per frame
    void OnTriggerEnter2D(Collider2D co_target)
    {
        if (co_target.tag == "R2")
        {
            healthBarSlider = GameObject.FindGameObjectWithTag("Slider").GetComponent<Slider>();
            healthBarSlider.value = healthBarSlider.value + 0.3f;
            sound.PlayOneShot(colsound);
            sound.Play();
            score = score + 10;
            Debug.Log("Score: " + score);

            if (gameObject == GameObject.Find("fruit (4)"))
            {
                Destroy(GameObject.Find("stone_wall1"));
                Destroy(GameObject.Find("stone_wall2"));
                //NPC_object.SetActive(true);
            }

            Destroy(gameObject);

            if (Player_control.score >= 90)
            {
                GameObject.Find("door_open").SetActive(true);
            }
        }
    }
}
