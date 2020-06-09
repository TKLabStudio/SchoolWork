using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class stone_blasting : MonoBehaviour
{
    Animator m_Animator;
    AudioSource blastering_sound;
    // Start is called before the first frame update
    void Start()
    {
        m_Animator = gameObject.GetComponent<Animator>();
        blastering_sound = gameObject.GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void OnTriggerEnter2D(Collider2D co_target)
    {
        if (co_target.tag == "X_ray")
        {
            m_Animator.SetTrigger("blasting");
            blastering_sound.Play();

        }
    }
    void destory()
    {
        Destroy(gameObject);
    }

}