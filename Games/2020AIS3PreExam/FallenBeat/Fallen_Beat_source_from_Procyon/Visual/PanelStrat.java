// 
// Decompiled by Procyon v0.5.36
// 

package Visual;

import javax.swing.plaf.ButtonUI;
import java.awt.Component;
import java.awt.Dimension;
import javax.swing.Icon;
import java.awt.BorderLayout;
import java.awt.LayoutManager;
import java.awt.GridLayout;
import java.awt.Font;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.ImageIcon;
import javax.swing.JPanel;

public class PanelStrat extends JPanel
{
    MyColor c;
    ImageIcon iconImSoHappy;
    ImageIcon iconGekkou;
    JPanel pCenter;
    JPanel pSouth;
    JLabel lNorth;
    JLabel lWest;
    JLabel lEast;
    JPanel pL;
    JPanel gapL;
    JLabel lIconL;
    JPanel pLCenter;
    JLabel lNameL;
    JPanel pLSouth;
    JPanel[] pBtnL;
    public JButton[] btnL;
    JPanel pR;
    JPanel gapR;
    JLabel lIconR;
    JPanel pRCenter;
    JLabel lNameR;
    JPanel pRSouth;
    JPanel[] pBtnR;
    public JButton[] btnR;
    Font btnFont;
    public JButton btnBack;
    
    public PanelStrat() {
        this.c = new MyColor();
        this.iconImSoHappy = new ImageIcon("songs/I'm so Happy/I'm so Happy.png");
        this.iconGekkou = new ImageIcon("songs/gekkou/gekkou.png");
        this.pCenter = new JPanel(new GridLayout(1, 2));
        this.pSouth = new JPanel();
        this.lNorth = new JLabel("Please turn off your Chinese Input Method.", 0);
        this.lWest = new JLabel();
        this.lEast = new JLabel();
        this.pL = new JPanel(new BorderLayout());
        this.gapL = new JPanel();
        this.lIconL = new JLabel(this.iconImSoHappy);
        this.pLCenter = new JPanel(new BorderLayout());
        this.lNameL = new JLabel("I'm so Happy", 0);
        this.pLSouth = new JPanel(new GridLayout(1, 3));
        this.pBtnL = new JPanel[3];
        this.btnL = new JButton[3];
        this.pR = new JPanel(new BorderLayout());
        this.gapR = new JPanel();
        this.lIconR = new JLabel(this.iconGekkou);
        this.pRCenter = new JPanel(new BorderLayout());
        this.lNameR = new JLabel("MoonLight Dance", 0);
        this.pRSouth = new JPanel(new GridLayout(1, 3));
        this.pBtnR = new JPanel[3];
        this.btnR = new JButton[3];
        this.btnFont = new Font("Dialog", 1, 35);
        this.btnBack = new JButton("Back");
        this.setLayout(new BorderLayout());
        this.setBackground(this.c.brown);
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
        this.gapL.setBackground(this.c.brown);
        this.pL.add(this.gapL, "East");
        this.pLCenter.setBackground(this.c.blue);
        this.pLCenter.add(this.lIconL, "North");
        this.lNameL.setFont(this.btnFont);
        this.pLCenter.add(this.lNameL, "Center");
        this.pLSouth.setOpaque(false);
        this.pLCenter.add(this.pLSouth, "South");
        this.pL.add(this.pLCenter, "Center");
        this.pL.setBackground(this.c.blue);
        this.pCenter.add(this.pL);
        this.gapR.setBackground(this.c.brown);
        this.pR.add(this.gapR, "West");
        this.pRCenter.setBackground(this.c.blue);
        this.pRCenter.add(this.lIconR, "North");
        this.lNameR.setFont(this.btnFont);
        this.pRCenter.add(this.lNameR, "Center");
        this.pRSouth.setOpaque(false);
        this.pRCenter.add(this.pRSouth, "South");
        this.pR.add(this.pRCenter, "Center");
        this.pR.setBackground(this.c.blue);
        this.pCenter.setOpaque(false);
        this.pCenter.add(this.pR);
        for (int i = 0; i < 3; ++i) {
            switch (i) {
                case 0: {
                    this.btnL[i] = new JButton("Trial");
                    this.btnR[i] = new JButton("Trial");
                    break;
                }
                case 1: {
                    this.btnL[i] = new JButton("Easy");
                    this.btnR[i] = new JButton("Easy");
                    break;
                }
                default: {
                    this.btnL[i] = new JButton("Hard");
                    this.btnR[i] = new JButton("Hard");
                    break;
                }
            }
            this.btnL[i].setUI(new CommonButtonUI());
            this.btnL[i].setBackground(this.c.gray);
            this.btnL[i].setFont(this.btnFont);
            this.btnL[i].setForeground(this.c.white);
            this.btnL[i].setPreferredSize(new Dimension(0, 70));
            this.pLSouth.add(this.btnL[i]);
            this.btnR[i].setUI(new CommonButtonUI());
            this.btnR[i].setBackground(this.c.gray);
            this.btnR[i].setFont(this.btnFont);
            this.btnR[i].setForeground(this.c.white);
            this.btnR[i].setPreferredSize(new Dimension(0, 70));
            this.pRSouth.add(this.btnR[i]);
        }
        this.pCenter.setBackground(this.c.brown);
        this.add(this.pCenter, "Center");
    }
}
