// 
// Decompiled by Procyon v0.5.36
// 

package Visual;

import java.io.Reader;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.FileInputStream;
import javax.swing.border.Border;
import javax.swing.border.EmptyBorder;
import javax.swing.plaf.ButtonUI;
import java.awt.Component;
import java.awt.Dimension;
import java.io.File;
import java.awt.GraphicsEnvironment;
import javax.swing.Icon;
import java.awt.BorderLayout;
import java.awt.LayoutManager;
import java.awt.GridLayout;
import javax.swing.JButton;
import java.awt.Font;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class PanelHell extends JPanel
{
    MyColor c;
    JPanel pText;
    JLabel[] text;
    JPanel pHell;
    JPanel pCenter;
    JPanel pSouth;
    JLabel lNorth;
    JLabel lWest;
    JLabel lEast;
    ImageIcon iconHell;
    JLabel lIcon;
    JLabel lName;
    JPanel pBtn;
    Font btnFont;
    Font textFont;
    public JButton btnBack;
    public JButton btnHell;
    
    public PanelHell() {
        this.c = new MyColor();
        this.pText = new JPanel(new GridLayout(10, 1));
        this.text = new JLabel[10];
        this.pHell = new JPanel(new BorderLayout());
        this.pCenter = new JPanel(new GridLayout(1, 2));
        this.pSouth = new JPanel();
        this.lNorth = new JLabel("Please turn off your Chinese Input Method.", 0);
        this.lWest = new JLabel();
        this.lEast = new JLabel();
        this.iconHell = new ImageIcon("songs/gekkou/gekkou_hell.png");
        this.lIcon = new JLabel(this.iconHell);
        this.lName = new JLabel("MoonLight Dance", 0);
        this.pBtn = new JPanel();
        this.btnFont = new Font("Dialog", 1, 35);
        this.btnBack = new JButton("Back");
        this.btnHell = new JButton("Hell");
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
        this.lNorth.setFont(this.btnFont);
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
        for (int i = 0; i < 10; ++i) {
            (this.text[i] = new JLabel()).setFont(this.textFont);
            this.text[i].setHorizontalAlignment(0);
            this.pText.add(this.text[i]);
        }
        this.text[0].setText("=====RECORD=====");
        this.text[1].setText("Score   :");
        this.text[2].setText("Rate    :");
        this.text[3].setText("Rank    :");
        this.text[4].setText("");
        this.text[5].setText("Critical:");
        this.text[6].setText("Early   :");
        this.text[7].setText("Late    :");
        this.text[8].setText("Miss    :");
        this.text[9].setText("MaxCombo:");
        this.pText.setOpaque(false);
        this.pText.setBorder(new EmptyBorder(10, 30, 10, 10));
        this.pCenter.add(this.pText);
        this.pHell.add(this.lIcon, "North");
        this.lName.setFont(this.btnFont);
        this.pHell.add(this.lName, "Center");
        this.btnHell.setUI(new CommonButtonUI());
        this.btnHell.setBackground(this.c.gray);
        this.btnHell.setFont(this.btnFont);
        this.btnHell.setForeground(this.c.white);
        this.btnHell.setPreferredSize(new Dimension(150, 70));
        this.pBtn.add(this.btnHell);
        this.pBtn.setOpaque(false);
        this.pHell.add(this.pBtn, "South");
        this.pHell.setOpaque(false);
        this.pCenter.add(this.pHell);
        this.pCenter.setBackground(this.c.blue);
        this.add(this.pCenter, "Center");
    }
    
    public void readRecord() throws Exception {
        final File f = new File("songs/gekkou/highScoreHell.txt");
        final BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(f), "GBK"));
        final String[] data = new String[9];
        for (int i = 0; i < 9 && br.ready(); ++i) {
            final String s = br.readLine();
            if (s.toCharArray()[0] == '*' || s.toCharArray()[0] == '=') {
                --i;
            }
            else {
                data[i] = s;
            }
        }
        br.close();
        this.text[1].setText("Score   :" + String.format("%6s", data[0]));
        this.text[2].setText("Rate    :" + String.format("%5s", data[1]) + "%");
        this.text[3].setText("Rank    :" + String.format("%6s", data[2]));
        this.text[4].setText("0".equals(data[3]) ? "" : "[Full Combo]");
        this.text[5].setText("Critical:" + String.format("%6s", data[4]));
        this.text[6].setText("Early   :" + String.format("%6s", data[5]));
        this.text[7].setText("Late    :" + String.format("%6s", data[6]));
        this.text[8].setText("Miss    :" + String.format("%6s", data[7]));
        this.text[9].setText("MaxCombo:" + String.format("%6s", data[8]));
    }
}
