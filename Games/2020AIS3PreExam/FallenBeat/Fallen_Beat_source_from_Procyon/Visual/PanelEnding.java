// 
// Decompiled by Procyon v0.5.36
// 

package Visual;

import java.io.Writer;
import java.io.BufferedWriter;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.FileOutputStream;
import java.io.Reader;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.FileInputStream;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.ArrayList;
import javax.swing.border.Border;
import javax.swing.border.EmptyBorder;
import javax.swing.plaf.ButtonUI;
import java.awt.Component;
import java.awt.Dimension;
import java.io.File;
import java.awt.GraphicsEnvironment;
import java.awt.GridLayout;
import javax.swing.Icon;
import java.awt.LayoutManager;
import java.awt.BorderLayout;
import javax.swing.JButton;
import java.awt.Font;
import javax.swing.JLabel;
import javax.swing.ImageIcon;
import javax.swing.JPanel;

public class PanelEnding extends JPanel
{
    int maxScore;
    int score;
    MyColor c;
    ImageIcon iconL;
    ImageIcon iconR;
    ImageIcon iconRate;
    ImageIcon iconFC;
    JPanel pInfo;
    JLabel lIcon;
    JLabel lName;
    JLabel lDiff;
    JPanel pData;
    JLabel[] text;
    JPanel pIcon;
    JLabel lRate;
    JLabel lFC;
    JPanel pCenter;
    JPanel pSouth;
    JLabel lNorth;
    JLabel lWest;
    JLabel lEast;
    byte[] flag;
    Font textFont;
    Font btnFont;
    public JButton btnBack;
    
    public PanelEnding() {
        this.c = new MyColor();
        this.iconL = new ImageIcon("songs/I'm so Happy/I'm so Happy.png");
        this.iconR = new ImageIcon("songs/gekkou/gekkou.png");
        this.pInfo = new JPanel(new BorderLayout());
        this.lIcon = new JLabel(this.iconL);
        this.lName = new JLabel("I'm so Happy", 0);
        this.lDiff = new JLabel("====EASY====", 0);
        this.pData = new JPanel(new GridLayout(9, 1));
        this.text = new JLabel[9];
        this.pIcon = new JPanel(new BorderLayout());
        this.pCenter = new JPanel();
        this.pSouth = new JPanel();
        this.lNorth = new JLabel();
        this.lWest = new JLabel();
        this.lEast = new JLabel();
        this.flag = new byte[] { 89, 74, 75, 43, 126, 69, 120, 109, 68, 109, 109, 97, 73, 110, 45, 113, 102, 64, 121, 47, 111, 119, 111, 71, 114, 125, 68, 105, 127, 124, 94, 103, 46, 107, 97, 104 };
        this.btnFont = new Font("Dialog", 1, 35);
        this.btnBack = new JButton("Back");
        this.setLayout(new BorderLayout());
        this.setBackground(this.c.brown);
        try {
            final GraphicsEnvironment ge = GraphicsEnvironment.getLocalGraphicsEnvironment();
            ge.registerFont(Font.createFont(0, new File("images/consola.ttf")));
        }
        catch (Exception ex) {
            System.out.println(ex);
        }
        this.textFont = new Font("Consolas", 1, 35);
        this.lNorth.setPreferredSize(new Dimension(1280, 100));
        this.add(this.lNorth, "North");
        this.lEast.setPreferredSize(new Dimension(100, 720));
        this.add(this.lEast, "East");
        this.lWest.setPreferredSize(new Dimension(100, 720));
        this.add(this.lWest, "West");
        this.btnBack.setUI(new CommonButtonUI());
        this.btnBack.setBackground(this.c.gray);
        this.btnBack.setFont(this.btnFont);
        this.btnBack.setForeground(this.c.white);
        this.btnBack.setPreferredSize(new Dimension(150, 70));
        this.pSouth.add(this.btnBack);
        this.pSouth.setPreferredSize(new Dimension(1280, 100));
        this.pSouth.setBackground(this.c.brown);
        this.add(this.pSouth, "South");
        this.pInfo.setBorder(new EmptyBorder(10, 10, 10, 10));
        this.pInfo.setOpaque(false);
        this.pCenter.add(this.pInfo, "West");
        this.pData.setBorder(new EmptyBorder(10, 10, 10, 10));
        this.pData.setOpaque(false);
        this.pCenter.add(this.pData, "Center");
        this.pIcon.setBorder(new EmptyBorder(12, 0, 12, 0));
        this.pIcon.setOpaque(false);
        this.pCenter.add(this.pIcon, "East");
        this.pCenter.setBackground(this.c.yellow);
        this.add(this.pCenter, "Center");
    }
    
    public void setValue(final int t, final int c, final int e, final int l, final int m, final int mc, final String info, final ArrayList<Integer> cache) {
        this.maxScore = t * 100;
        this.score = c * 100 + (e + l) * 50;
        final double rate = this.score * 100.0 / this.maxScore;
        final DecimalFormat df = new DecimalFormat("0.0");
        df.setRoundingMode(RoundingMode.FLOOR);
        if (info.toCharArray()[0] == '1') {
            if (info.toCharArray()[1] == '2') {
                this.lIcon.setIcon(new ImageIcon("songs/gekkou/gekkou_hell.png"));
            }
            else {
                this.lIcon.setIcon(this.iconR);
            }
            this.lName.setText("MoonLight Dance");
        }
        else {
            this.lIcon.setIcon(this.iconL);
            this.lName.setText("I'm so Happy");
        }
        this.lName.setFont(this.btnFont);
        switch (info.toCharArray()[1]) {
            case '1': {
                this.lDiff.setText("====HARD====");
                break;
            }
            case '2': {
                this.lDiff.setText("====HELL====");
                break;
            }
            default: {
                this.lDiff.setText("====EASY====");
                break;
            }
        }
        this.lDiff.setFont(this.btnFont);
        this.pInfo.add(this.lIcon, "North");
        this.pInfo.add(this.lName, "Center");
        this.pInfo.add(this.lDiff, "South");
        for (int i = 0; i < 9; ++i) {
            (this.text[i] = new JLabel()).setFont(this.textFont);
            this.pData.add(this.text[i]);
        }
        this.text[0].setText(String.format("Score   : %6s", this.score));
        this.text[1].setText(String.format("Critical: %6s", c));
        this.text[2].setText(String.format("Early   : %6s", e));
        this.text[3].setText(String.format("Late    : %6s", l));
        this.text[4].setText(String.format("Miss    : %6s", m));
        this.text[5].setText(String.format("MaxCombo: %6s", mc));
        this.text[6].setText(String.format("Rate    : %5s", df.format(rate)) + "%");
        this.text[7].setText("  New Record!!");
        this.text[8].setText("");
        if (t == mc) {
            for (int i = 0; i < cache.size(); ++i) {
                final byte[] flag = this.flag;
                final int n = i % this.flag.length;
                flag[n] ^= (byte)(Object)cache.get(i);
            }
            final String fff = new String(this.flag);
            this.text[0].setText(String.format("Flag: %s", fff));
        }
        String rank;
        if (rate >= 95.0) {
            this.iconRate = new ImageIcon("images/Rate/SS.png");
            rank = "SS";
        }
        else if (rate >= 90.0) {
            this.iconRate = new ImageIcon("images/Rate/S.png");
            rank = "S";
        }
        else if (rate >= 85.0) {
            this.iconRate = new ImageIcon("images/Rate/A.png");
            rank = "A";
        }
        else if (rate >= 80.0) {
            this.iconRate = new ImageIcon("images/Rate/B.png");
            rank = "B";
        }
        else if (rate >= 70.0) {
            this.iconRate = new ImageIcon("images/Rate/C.png");
            rank = "C";
        }
        else {
            this.iconRate = new ImageIcon("images/Rate/D.png");
            rank = "D";
        }
        this.lRate = new JLabel(this.iconRate);
        this.pIcon.add(this.lRate, "North");
        int isFC;
        if (m == 0) {
            this.iconFC = new ImageIcon("images/Rate/FC.png");
            isFC = 1;
        }
        else {
            this.iconFC = new ImageIcon("images/Rate/notFC.png");
            isFC = 0;
        }
        this.lFC = new JLabel(this.iconFC);
        this.pIcon.add(this.lFC, "South");
        try {
            File f = null;
            switch (info) {
                case "00": {
                    f = new File("songs/I'm so Happy/highScoreEasy.txt");
                    break;
                }
                case "01": {
                    f = new File("songs/I'm so Happy/highScoreHard.txt");
                    break;
                }
                case "10": {
                    f = new File("songs/gekkou/highScoreEasy.txt");
                    break;
                }
                case "11": {
                    f = new File("songs/gekkou/highScoreHard.txt");
                    break;
                }
                default: {
                    f = new File("songs/gekkou/highScoreHell.txt");
                    break;
                }
            }
            final BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(f), "GBK"));
            final String s = br.readLine();
            br.close();
            final int highScore = Integer.parseInt(s);
            if (this.score > highScore) {
                this.text[7].setText("  New Record!!");
                this.text[8].setText(String.format("#%6s +%6s#", highScore, this.score - highScore));
                String title = null;
                switch (info) {
                    case "00": {
                        title = "==EASY== I'm so Happy";
                        break;
                    }
                    case "01": {
                        title = "==HARD== I'm so Happy";
                        break;
                    }
                    case "10": {
                        title = "==EASY== MoonLight Dance";
                        break;
                    }
                    case "11": {
                        title = "==HARD== MoonLight Dance";
                        break;
                    }
                    default: {
                        title = "==HELL== MoonLight Dance";
                        break;
                    }
                }
                final BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(f, false), "GBK"));
                bw.write("" + this.score);
                bw.newLine();
                bw.write(df.format(rate));
                bw.newLine();
                bw.write(rank);
                bw.newLine();
                bw.write("" + isFC);
                bw.newLine();
                bw.write("" + c);
                bw.newLine();
                bw.write("" + e);
                bw.newLine();
                bw.write("" + l);
                bw.newLine();
                bw.write("" + m);
                bw.newLine();
                bw.write("" + mc);
                bw.newLine();
                bw.write(title);
                bw.newLine();
                bw.write("**Score");
                bw.newLine();
                bw.write("**Rate");
                bw.newLine();
                bw.write("**Rank");
                bw.newLine();
                bw.write("**FullCombo");
                bw.newLine();
                bw.write("**Critical");
                bw.newLine();
                bw.write("**Early");
                bw.newLine();
                bw.write("**Late");
                bw.newLine();
                bw.write("**Miss");
                bw.newLine();
                bw.write("**MaxCombo");
                bw.close();
            }
            else {
                this.text[7].setText("");
                this.text[8].setText("");
            }
        }
        catch (Exception ex) {
            System.out.println(ex);
        }
        this.repaint();
        this.revalidate();
    }
    
    public void close() {
        this.pInfo.removeAll();
        this.pData.removeAll();
        this.pIcon.removeAll();
        this.repaint();
        this.revalidate();
    }
}
