// 
// Decompiled by Procyon v0.5.36
// 

package Control;

import java.awt.event.ActionEvent;
import java.awt.Component;
import Visual.PanelEnding;
import Visual.PanelGaming;
import Visual.PanelHighScore;
import Visual.PanelHell;
import Visual.PanelHelp;
import Visual.PanelMenu;
import java.awt.event.ActionListener;
import javax.swing.JFrame;

public class Frame extends JFrame implements ActionListener
{
    PanelMenu pMenu;
    PanelHelp pHelp;
    PanelHell pHell;
    PanelHighScore pHighScore;
    PanelGaming pGaming;
    PanelEnding pEnding;
    GameControl gc;
    AudioPlayer apImSoHappy;
    AudioPlayer apGekkou;
    AudioPlayer titleBGM;
    boolean trialL;
    boolean trialR;
    
    public Frame(final String s) {
        super(s);
        this.pMenu = new PanelMenu();
        this.pHelp = new PanelHelp();
        this.pHell = new PanelHell();
        this.pHighScore = new PanelHighScore();
        this.pEnding = new PanelEnding();
        this.apImSoHappy = new AudioPlayer("songs/I'm so Happy/I'm so Happy.wav");
        this.apGekkou = new AudioPlayer("songs/gekkou/gekkou.wav");
        this.titleBGM = new AudioPlayer("songs/titleBGM.wav");
        this.trialL = false;
        this.trialR = false;
        this.pMenu.btnStart.addActionListener(this);
        this.pMenu.btnHighScore.addActionListener(this);
        this.pMenu.btnHelp.addActionListener(this);
        this.pMenu.btnExit.addActionListener(this);
        this.add(this.pMenu);
        this.pHelp.btnBack.addActionListener(this);
        this.pHelp.btnHell.addActionListener(this);
        this.pHighScore.btnBack.addActionListener(this);
        this.pHell.btnBack.addActionListener(this);
        this.pHell.btnHell.addActionListener(this);
        this.pEnding.btnBack.addActionListener(this);
        this.titleBGM.musicPlay();
    }
    
    @Override
    public void actionPerformed(final ActionEvent ae) {
        if (ae.getSource() == this.pMenu.btnStart) {
            if (this.titleBGM.clip != null && this.titleBGM.clip.isRunning()) {
                this.titleBGM.musicStop();
            }
            this.remove(this.pMenu);
            this.add(this.pHell);
            this.repaint();
            this.revalidate();
        }
        else if (ae.getSource() == this.pMenu.btnHighScore) {
            this.remove(this.pMenu);
            this.add(this.pHighScore);
            try {
                this.pHighScore.readRecord();
            }
            catch (Exception ex) {
                System.out.println(ex);
            }
            this.repaint();
            this.revalidate();
        }
        else if (ae.getSource() == this.pMenu.btnHelp) {
            this.remove(this.pMenu);
            this.add(this.pHelp);
            this.repaint();
            this.revalidate();
        }
        else if (ae.getSource() == this.pMenu.btnExit) {
            if (this.titleBGM.clip != null && this.titleBGM.clip.isRunning()) {
                this.titleBGM.musicStop();
            }
            this.dispose();
        }
        if (ae.getSource() == this.pHelp.btnBack) {
            this.remove(this.pHelp);
            this.add(this.pMenu);
            this.repaint();
            this.revalidate();
        }
        else if (ae.getSource() == this.pHelp.btnHell) {
            if (this.titleBGM.clip != null && this.titleBGM.clip.isRunning()) {
                this.titleBGM.musicStop();
            }
            this.remove(this.pHelp);
            this.add(this.pHell);
            try {
                this.pHell.readRecord();
            }
            catch (Exception ex) {
                System.out.println(ex);
            }
            this.repaint();
            this.revalidate();
        }
        if (ae.getSource() == this.pHell.btnBack) {
            this.remove(this.pHell);
            this.add(this.pMenu);
            this.titleBGM.musicPlay();
            this.repaint();
            this.revalidate();
        }
        else if (ae.getSource() == this.pHell.btnHell) {
            this.pGaming = new PanelGaming();
            this.remove(this.pHell);
            this.add(this.pGaming);
            this.repaint();
            this.revalidate();
            (this.gc = new GameControl(this, this.pEnding, this.pGaming, "songs/gekkou/hell.txt")).setInfo(1, 2);
            this.gc.setMusic("songs/gekkou/gekkou_hell.wav");
            this.gc.setBanner("songs/gekkou/banner.png");
            this.gc.setDelay(560, -5);
            this.gc.start();
        }
        if (ae.getSource() == this.pHighScore.btnBack) {
            this.remove(this.pHighScore);
            this.add(this.pMenu);
            this.repaint();
            this.revalidate();
        }
        if (ae.getSource() == this.pEnding.btnBack) {
            this.remove(this.pEnding);
            this.pEnding.close();
            this.add(this.pHell);
            this.repaint();
            this.revalidate();
        }
    }
}
