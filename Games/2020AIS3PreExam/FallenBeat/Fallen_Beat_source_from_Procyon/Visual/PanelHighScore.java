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
import javax.swing.Icon;
import javax.swing.plaf.ButtonUI;
import java.awt.Component;
import java.awt.Dimension;
import java.io.File;
import java.awt.GraphicsEnvironment;
import java.awt.BorderLayout;
import java.awt.LayoutManager;
import java.awt.GridLayout;
import javax.swing.JButton;
import java.awt.Font;
import javax.swing.JLabel;
import javax.swing.ImageIcon;
import javax.swing.JPanel;

public class PanelHighScore extends JPanel
{
    MyColor c;
    ImageIcon iconImSoHappyHS;
    ImageIcon iconGekkouHS;
    JLabel[] lIconHS;
    JPanel[] pRecord;
    JPanel[] pGap;
    JPanel[] pTextPlate;
    JPanel[] pText;
    JLabel[][] text;
    JPanel pCenter;
    JPanel pSouth;
    JLabel lNorth;
    JLabel lWest;
    JLabel lEast;
    Font textFont;
    Font btnFont;
    public JButton btnBack;
    
    public PanelHighScore() {
        this.c = new MyColor();
        this.iconImSoHappyHS = new ImageIcon("songs/I'm so Happy/I'm so Happy_HS.png");
        this.iconGekkouHS = new ImageIcon("songs/gekkou/gekkou_HS.png");
        this.lIconHS = new JLabel[2];
        this.pRecord = new JPanel[2];
        this.pGap = new JPanel[2];
        this.pTextPlate = new JPanel[2];
        this.pText = new JPanel[4];
        this.text = new JLabel[4][10];
        this.pCenter = new JPanel(new GridLayout(2, 1));
        this.pSouth = new JPanel();
        this.lNorth = new JLabel();
        this.lWest = new JLabel();
        this.lEast = new JLabel();
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
        this.textFont = new Font("Consolas", 1, 25);
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
        (this.pRecord[0] = new JPanel(new BorderLayout())).setBackground(this.c.blue);
        (this.pGap[0] = new JPanel()).setBackground(this.c.brown);
        this.pRecord[0].add(this.pGap[0], "South");
        (this.lIconHS[0] = new JLabel(this.iconImSoHappyHS)).setBorder(new EmptyBorder(0, 10, 0, 10));
        this.pRecord[0].add(this.lIconHS[0], "West");
        this.pCenter.add(this.pRecord[0]);
        (this.pRecord[1] = new JPanel(new BorderLayout())).setBackground(this.c.blue);
        (this.pGap[1] = new JPanel()).setBackground(this.c.brown);
        this.pRecord[1].add(this.pGap[1], "North");
        (this.lIconHS[1] = new JLabel(this.iconGekkouHS)).setBorder(new EmptyBorder(0, 10, 0, 10));
        this.pRecord[1].add(this.lIconHS[1], "West");
        this.pCenter.add(this.pRecord[1]);
        for (int i = 0; i < 2; ++i) {
            (this.pTextPlate[i] = new JPanel(new GridLayout(1, 2))).setBorder(new EmptyBorder(10, 10, 10, 10));
            this.pTextPlate[i].setOpaque(false);
            this.pRecord[i].add(this.pTextPlate[i], "Center");
        }
        for (int i = 0; i < 4; ++i) {
            (this.pText[i] = new JPanel(new GridLayout(5, 2))).setBackground((i % 2 == 0) ? this.c.white : this.c.yellow);
            this.pText[i].setBorder(new EmptyBorder(10, 10, 10, 10));
            if (i < 2) {
                this.pTextPlate[0].add(this.pText[i]);
            }
            else {
                this.pTextPlate[1].add(this.pText[i]);
            }
        }
        for (int i = 0; i < 4; ++i) {
            for (int j = 0; j < 10; ++j) {
                (this.text[i][j] = new JLabel()).setFont(this.textFont);
            }
            for (int j = 0; j < 5; ++j) {
                this.pText[i].add(this.text[i][j]);
                this.pText[i].add(this.text[i][j + 5]);
            }
            this.text[i][0].setText((i % 2 == 0) ? "====EASY====" : "====HARD====");
            this.text[i][1].setText("Score:");
            this.text[i][2].setText("Rate :");
            this.text[i][3].setText("Rank :");
            this.text[i][4].setText("");
            this.text[i][5].setText("Critical:");
            this.text[i][6].setText("Early   :");
            this.text[i][7].setText("Late    :");
            this.text[i][8].setText("Miss    :");
            this.text[i][9].setText("MaxCombo:");
        }
        this.pCenter.setOpaque(false);
        this.add(this.pCenter, "Center");
    }
    
    public void readRecord() throws Exception {
        for (int i = 0; i < 4; ++i) {
            File f = null;
            switch (i) {
                case 0: {
                    f = new File("songs/I'm so Happy/highScoreEasy.txt");
                    break;
                }
                case 1: {
                    f = new File("songs/I'm so Happy/highScoreHard.txt");
                    break;
                }
                case 2: {
                    f = new File("songs/gekkou/highScoreEasy.txt");
                    break;
                }
                default: {
                    f = new File("songs/gekkou/highScoreHard.txt");
                    break;
                }
            }
            final BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(f), "GBK"));
            final String[] data = new String[9];
            for (int j = 0; j < 9 && br.ready(); ++j) {
                final String s = br.readLine();
                if (s.toCharArray()[0] == '*' || s.toCharArray()[0] == '=') {
                    --j;
                }
                else {
                    data[j] = s;
                }
            }
            br.close();
            this.text[i][0].setText((i % 2 == 0) ? "====EASY====" : "====HARD====");
            this.text[i][1].setText("Score:" + String.format("%6s", data[0]));
            this.text[i][2].setText("Rate :" + String.format("%5s", data[1]) + "%");
            this.text[i][3].setText("Rank :" + String.format("%6s", data[2]));
            this.text[i][4].setText("0".equals(data[3]) ? "" : "[Full Combo]");
            this.text[i][5].setText("Critical:" + String.format("%4s", data[4]));
            this.text[i][6].setText("Early   :" + String.format("%4s", data[5]));
            this.text[i][7].setText("Late    :" + String.format("%4s", data[6]));
            this.text[i][8].setText("Miss    :" + String.format("%4s", data[7]));
            this.text[i][9].setText("MaxCombo:" + String.format("%4s", data[8]));
        }
    }
}
