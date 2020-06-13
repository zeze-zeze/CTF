// 
// Decompiled by Procyon v0.5.36
// 

package Control;

import java.awt.event.KeyEvent;
import java.awt.Font;
import java.io.File;
import java.awt.GraphicsEnvironment;
import javax.swing.Icon;
import java.awt.Component;
import java.io.Reader;
import java.io.BufferedReader;
import java.io.FileReader;
import java.awt.LayoutManager;
import java.util.ArrayList;
import javax.swing.ImageIcon;
import javax.swing.JPanel;
import javax.swing.JLabel;
import Visual.MyColor;
import Visual.PanelEnding;
import Visual.PanelGaming;
import java.awt.event.KeyListener;

public class GameControl extends Thread implements KeyListener
{
    Frame f;
    PanelGaming pg;
    PanelEnding pe;
    MyColor c;
    AudioPlayer music;
    JLabel note;
    JPanel pFumen;
    JPanel pCL;
    JLabel lCL;
    ImageIcon bt;
    ImageIcon fx;
    ImageIcon cl;
    ImageIcon aeY;
    ImageIcon aeG;
    ImageIcon aeB;
    ImageIcon aeR;
    ImageIcon aeW;
    JLabel[] lAE;
    ArrayList<Integer> cache;
    JLabel lbanner;
    JLabel wordCombo;
    JLabel showCombo;
    int bpm;
    int y;
    int distance;
    int deltaY;
    int delay;
    int initY;
    long spf;
    int[] key;
    ArrayList<ArrayList<Integer>> check;
    int[] checkSize;
    int criticalTime;
    int nearTime;
    int total;
    int critical;
    int early;
    int late;
    int miss;
    int combo;
    int idx;
    int comboMax;
    String info;
    
    public GameControl(final Frame fTemp, final PanelEnding peTemp, final PanelGaming pgTemp, final String fumenPath) {
        this.c = new MyColor();
        this.pFumen = new JPanel(null);
        this.pCL = new JPanel(null);
        this.bt = new ImageIcon("images/BT.png");
        this.fx = new ImageIcon("images/FX.png");
        this.cl = new ImageIcon("images/CL.png");
        this.aeY = new ImageIcon("images/ActionEffect/yellow.png");
        this.aeG = new ImageIcon("images/ActionEffect/green.png");
        this.aeB = new ImageIcon("images/ActionEffect/blue.png");
        this.aeR = new ImageIcon("images/ActionEffect/red.png");
        this.aeW = new ImageIcon("images/ActionEffect/white.png");
        this.lAE = new JLabel[4];
        this.wordCombo = new JLabel("Combo", 2);
        this.showCombo = new JLabel(String.format("%4s", "0"), 2);
        this.distance = 80;
        this.deltaY = 10;
        this.key = new int[] { 68, 70, 74, 75, 32 };
        this.checkSize = new int[5];
        this.criticalTime = 80;
        this.nearTime = 200;
        try {
            this.f = fTemp;
            this.pe = peTemp;
            this.pg = pgTemp;
            this.check = new ArrayList<ArrayList<Integer>>();
            for (int i = 0; i < 5; ++i) {
                this.check.add(new ArrayList<Integer>());
            }
            this.total = 0;
            this.critical = 0;
            this.early = 0;
            this.late = 0;
            this.miss = 0;
            this.combo = 0;
            this.comboMax = 0;
            this.idx = 0;
            this.y = 0;
            final FileReader fr = new FileReader(fumenPath);
            final BufferedReader br = new BufferedReader(fr);
            this.bpm = Integer.parseInt(br.readLine());
            this.spf = (long)(1.5E7 / this.bpm / (this.distance / this.deltaY) * 1000.0);
            for (int j = 0; j < 4; ++j) {
                (this.lAE[j] = new JLabel()).setOpaque(false);
                this.lAE[j].setBounds(111 * j + 14, 15, 100, 80);
                this.lAE[j].addKeyListener(this);
                this.lAE[j].setFocusable(true);
                this.pCL.add(this.lAE[j]);
            }
            (this.lCL = new JLabel(this.cl)).setBounds(0, 0, 460, 100);
            this.pCL.add(this.lCL);
            this.pCL.setBounds(410, 600, 460, 100);
            this.pg.add(this.pCL);
            try {
                final GraphicsEnvironment ge = GraphicsEnvironment.getLocalGraphicsEnvironment();
                ge.registerFont(Font.createFont(0, new File("images/consola.ttf")));
            }
            catch (Exception ex) {
                System.out.println(ex);
            }
            final Font textFont = new Font("Consolas", 1, 100);
            this.wordCombo.setBounds(900, 100, 400, 120);
            this.wordCombo.setForeground(this.c.white);
            this.wordCombo.setFont(textFont);
            this.pg.add(this.wordCombo);
            this.showCombo.setBounds(900, 220, 400, 120);
            this.showCombo.setForeground(this.c.white);
            this.showCombo.setFont(textFont);
            pgTemp.add(this.showCombo);
            this.cache = new ArrayList<Integer>();
            final int[] bounds = { 1, 111, 223, 334, 36 };
            while (br.ready()) {
                final String s = br.readLine();
                if (s.charAt(0) != '*') {
                    final int a = Integer.parseInt(s);
                    this.cache.add(a);
                    for (int k = 0; k < 5; ++k) {
                        if ((a >> k & 0x1) == 0x1) {
                            if (k != 4) {
                                (this.note = new JLabel(this.bt)).setBounds(bounds[k], this.y, 100, 40);
                            }
                            else {
                                (this.note = new JLabel(this.fx)).setBounds(bounds[k], this.y, 350, 40);
                            }
                            this.pFumen.add(this.note);
                            this.check.get(k).add(this.y);
                            ++this.total;
                        }
                    }
                    this.y += this.distance;
                }
            }
            this.pFumen.setBounds(422, -this.y, 438, this.y - 125);
            this.pg.add(this.pFumen);
            this.pFumen.setOpaque(false);
            this.pg.repaint();
            this.pg.revalidate();
            this.pg.addKeyListener(this);
            this.pg.setFocusable(true);
            this.pg.requestFocusInWindow();
            for (int l = 0; l < 5; ++l) {
                this.checkSize[l] = this.check.get(l).size();
            }
            br.close();
            fr.close();
        }
        catch (Exception ex2) {
            System.out.println(ex2);
        }
    }
    
    public void setInfo(final int song, final int difficulty) {
        this.info = "" + song + "" + difficulty + "";
    }
    
    public void setMusic(final String filePath) {
        this.music = new AudioPlayer(filePath);
    }
    
    public void setBanner(final String filePath) {
        (this.lbanner = new JLabel(new ImageIcon(filePath))).setBounds(0, 0, 410, 720);
        this.pg.add(this.lbanner);
    }
    
    public void setDelay(final int delay, final int initY) {
        this.delay = delay;
        this.initY = initY;
    }
    
    @Override
    public void run() {
        final long startConstruct = System.currentTimeMillis();
        System.out.println("Ready");
        final int sizeY = this.y - this.distance;
        final int[] counter = { -1, -1, -1, -1, -1 };
        while (System.currentTimeMillis() - startConstruct < 2000L) {}
        System.out.println("Go");
        long startTime = System.nanoTime();
        this.music.musicPlay();
        while (this.y > -720 - this.deltaY * 200) {
            while (System.nanoTime() - startTime < this.spf) {}
            startTime += this.spf;
            this.pFumen.setBounds(422, -this.y - this.deltaY * this.initY, 438, sizeY);
            this.y -= this.deltaY;
            for (int i = 0; i < 4; ++i) {
                if (this.checkSize[i] >= 1) {
                    if (this.check.get(i).get(this.checkSize[i] - 1) - (this.y + this.delay) > this.nearTime) {
                        synchronized (this) {
                            this.lAE[i].setIcon(this.aeR);
                            final int[] checkSize = this.checkSize;
                            final int n = i;
                            --checkSize[n];
                            this.check.get(i).remove(this.checkSize[i]);
                            counter[i] = 5;
                            ++this.miss;
                            if (this.combo > this.comboMax) {
                                this.comboMax = this.combo;
                            }
                            this.combo = 0;
                            this.showCombo.setText(String.format("%4s", "0"));
                        }
                    }
                    else if (counter[i] == 0 || this.checkSize[i] == 0) {
                        synchronized (this) {
                            this.lAE[i].setIcon(null);
                            final int[] array = counter;
                            final int n2 = i;
                            --array[n2];
                        }
                    }
                    else if (counter[i] > 0) {
                        final int[] array2 = counter;
                        final int n3 = i;
                        --array2[n3];
                    }
                }
            }
            if (this.checkSize[4] >= 1) {
                if (this.check.get(4).get(this.checkSize[4] - 1) - (this.y + this.delay) > this.nearTime) {
                    synchronized (this) {
                        this.lAE[1].setIcon(this.aeR);
                        this.lAE[2].setIcon(this.aeR);
                        final int[] checkSize2 = this.checkSize;
                        final int n4 = 4;
                        --checkSize2[n4];
                        this.check.get(4).remove(this.checkSize[4]);
                        counter[4] = 5;
                        ++this.miss;
                        if (this.combo > this.comboMax) {
                            this.comboMax = this.combo;
                        }
                        this.combo = 0;
                        this.showCombo.setText(String.format("%4s", "0"));
                    }
                }
                else if (counter[4] == 0 || this.checkSize[4] == 0) {
                    synchronized (this) {
                        this.lAE[1].setIcon(null);
                        this.lAE[2].setIcon(null);
                        final int[] array3 = counter;
                        final int n5 = 4;
                        --array3[n5];
                    }
                }
                else {
                    if (counter[4] <= 0) {
                        continue;
                    }
                    final int[] array4 = counter;
                    final int n6 = 4;
                    --array4[n6];
                }
            }
        }
        if (this.combo > this.comboMax) {
            this.comboMax = this.combo;
        }
        this.f.remove(this.pg);
        this.f.add(this.pe);
        this.pe.setValue(this.total, this.critical, this.early, this.late, this.miss, this.comboMax, this.info, this.cache);
        this.f.repaint();
        this.f.revalidate();
        this.pg.removeKeyListener(this);
        this.pg.setFocusable(false);
    }
    
    @Override
    public void keyTyped(final KeyEvent ke) {
    }
    
    @Override
    public void keyPressed(final KeyEvent ke) {
        for (int i = 0; i < 4; ++i) {
            if (ke.getKeyCode() == this.key[i]) {
                if (this.checkSize[i] >= 1) {
                    final int deltaT = this.check.get(i).get(this.checkSize[i] - 1) - (this.y + this.delay);
                    if (Math.abs(deltaT) <= this.criticalTime) {
                        synchronized (this) {
                            this.lAE[i].setIcon(this.aeY);
                            final int[] checkSize = this.checkSize;
                            final int n = i;
                            --checkSize[n];
                            this.check.get(i).remove(this.checkSize[i]);
                            ++this.critical;
                            ++this.combo;
                            this.showCombo.setText(String.format("%4s", this.combo));
                        }
                    }
                    else if (deltaT > this.criticalTime && deltaT <= this.nearTime) {
                        synchronized (this) {
                            this.lAE[i].setIcon(this.aeG);
                            final int[] checkSize2 = this.checkSize;
                            final int n2 = i;
                            --checkSize2[n2];
                            this.check.get(i).remove(this.checkSize[i]);
                            ++this.late;
                        }
                    }
                    else if (deltaT < -this.criticalTime && deltaT >= -this.nearTime) {
                        synchronized (this) {
                            this.lAE[i].setIcon(this.aeB);
                            final int[] checkSize3 = this.checkSize;
                            final int n3 = i;
                            --checkSize3[n3];
                            this.check.get(i).remove(this.checkSize[i]);
                            ++this.early;
                        }
                    }
                    else {
                        this.lAE[i].setIcon(this.aeW);
                    }
                }
                else {
                    this.lAE[i].setIcon(this.aeW);
                }
            }
        }
        if (ke.getKeyCode() == this.key[4]) {
            if (this.checkSize[4] >= 1) {
                final int deltaT2 = this.check.get(4).get(this.checkSize[4] - 1) - (this.y + this.delay);
                if (Math.abs(deltaT2) <= this.criticalTime) {
                    synchronized (this) {
                        this.lAE[1].setIcon(this.aeY);
                        this.lAE[2].setIcon(this.aeY);
                        final int[] checkSize4 = this.checkSize;
                        final int n4 = 4;
                        --checkSize4[n4];
                        this.check.get(4).remove(this.checkSize[4]);
                        ++this.critical;
                        ++this.combo;
                        this.showCombo.setText(String.format("%4s", this.combo));
                    }
                }
                else if (deltaT2 > this.criticalTime && deltaT2 <= this.nearTime) {
                    synchronized (this) {
                        this.lAE[1].setIcon(this.aeG);
                        this.lAE[2].setIcon(this.aeG);
                        final int[] checkSize5 = this.checkSize;
                        final int n5 = 4;
                        --checkSize5[n5];
                        this.check.get(4).remove(this.checkSize[4]);
                        ++this.late;
                    }
                }
                else if (deltaT2 < -this.criticalTime && deltaT2 >= -this.nearTime) {
                    synchronized (this) {
                        this.lAE[1].setIcon(this.aeB);
                        this.lAE[2].setIcon(this.aeB);
                        final int[] checkSize6 = this.checkSize;
                        final int n6 = 4;
                        --checkSize6[n6];
                        this.check.get(4).remove(this.checkSize[4]);
                        ++this.early;
                    }
                }
                else {
                    this.lAE[1].setIcon(this.aeW);
                    this.lAE[2].setIcon(this.aeW);
                }
            }
            else {
                this.lAE[1].setIcon(this.aeW);
                this.lAE[2].setIcon(this.aeW);
            }
        }
    }
    
    @Override
    public void keyReleased(final KeyEvent ke) {
        for (int i = 0; i < 4; ++i) {
            if (ke.getKeyCode() == this.key[i]) {
                this.lAE[i].setIcon(null);
            }
        }
        if (ke.getKeyCode() == this.key[4]) {
            this.lAE[1].setIcon(null);
            this.lAE[2].setIcon(null);
        }
    }
}
