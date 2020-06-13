// 
// Decompiled by Procyon v0.5.36
// 

package Control;

import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;
import java.io.File;

public class AudioPlayer
{
    File music;
    Clip clip;
    
    public AudioPlayer(final String filePath) {
        this.music = new File(filePath);
    }
    
    public void musicPlay() {
        try {
            (this.clip = AudioSystem.getClip()).open(AudioSystem.getAudioInputStream(this.music));
            this.clip.start();
        }
        catch (Exception ex) {
            System.out.println(ex);
        }
    }
    
    public void musicStop() {
        this.clip.stop();
    }
    
    public void musicLoop() {
        try {
            (this.clip = AudioSystem.getClip()).open(AudioSystem.getAudioInputStream(this.music));
            this.clip.loop(-1);
        }
        catch (Exception ex) {
            System.out.println(ex);
        }
    }
}
