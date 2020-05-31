using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class sound_manager : MonoBehaviour
{
    public string sound_name1;
    public string sound_name2;
    public string sound_name3;
    public string sound_name4;
    public string sound_name5;
    public static AudioClip colsound1;
    public static AudioClip colsound2;
    public static AudioClip colsound3;
    public static AudioClip colsound4;
    public static AudioClip colsound5;
    static AudioSource audiosrc;

    // Start is called before the first frame update
    void Start()
    {
        colsound1 = Resources.Load<AudioClip>("" + sound_name1 + "");
        colsound2 = Resources.Load<AudioClip>("" + sound_name2 + "");
        colsound3 = Resources.Load<AudioClip>("" + sound_name3 + "");
        colsound4 = Resources.Load<AudioClip>("" + sound_name4 + "");
        colsound5 = Resources.Load<AudioClip>("" + sound_name5 + "");
        audiosrc = GetComponent<AudioSource>();
    }


    public static void playsound()
    {
        // audiosrc.Play();
        audiosrc.PlayOneShot(colsound1);
    }

    public static void playSound2()
    {
        audiosrc.PlayOneShot(colsound2);
    }
    public static void playSound3()
    {
        audiosrc.PlayOneShot(colsound3);
    }
    public static void playSound4()
    {
        audiosrc.PlayOneShot(colsound4);
    }
    public static void playSound5()
    {
        audiosrc.PlayOneShot(colsound5);
    }
}