using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class sound_manager : MonoBehaviour {
    public string sound_name;
    public static AudioClip colsound;
    static AudioSource audioSrc;
	// Use this for initialization
	void Start () {
        colsound = Resources.Load<AudioClip>(""+sound_name+"");
        audioSrc = GetComponent<AudioSource> ();
		
	}
	
    public static void playsound()
    {
        audioSrc.PlayOneShot(colsound); //播放AudioSource中的AudioClip
    }


}
