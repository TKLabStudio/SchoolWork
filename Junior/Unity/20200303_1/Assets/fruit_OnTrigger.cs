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
            Destroy(gameObject);
        }
    }
}
