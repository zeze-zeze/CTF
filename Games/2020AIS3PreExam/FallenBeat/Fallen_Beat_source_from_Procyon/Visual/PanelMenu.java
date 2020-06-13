// 
// Decompiled by Procyon v0.5.36
// 

package Visual;

import javax.swing.plaf.ButtonUI;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.BorderLayout;
import javax.swing.Icon;
import java.awt.LayoutManager;
import java.awt.GridLayout;
import javax.swing.JButton;
import java.awt.Font;
import javax.swing.JLabel;
import javax.swing.ImageIcon;
import javax.swing.JPanel;

public class PanelMenu extends JPanel
{
    MyColor c;
    ImageIcon logo;
    JPanel pBtnList;
    JLabel lLogo;
    JLabel lNorth;
    JLabel lSouth;
    JLabel lEast;
    Font btnFont;
    public JButton btnStart;
    public JButton btnHighScore;
    public JButton btnHelp;
    public JButton btnExit;
    
    public PanelMenu() {
        this.c = new MyColor();
        this.logo = new ImageIcon("images/fallenBeatLogo.png");
        this.pBtnList = new JPanel(new GridLayout(4, 1));
        this.lLogo = new JLabel(this.logo);
        this.lNorth = new JLabel();
        this.lSouth = new JLabel();
        this.lEast = new JLabel();
        this.btnFont = new Font("Dialog", 1, 35);
        this.btnStart = new JButton("Start");
        this.btnHighScore = new JButton("High Score");
        this.btnHelp = new JButton("Help");
        this.btnExit = new JButton("Exit");
        this.setLayout(new BorderLayout());
        this.setBackground(this.c.brown);
        this.lLogo.setPreferredSize(new Dimension(this.logo.getIconWidth() + 150, this.logo.getIconHeight()));
        this.add(this.lLogo, "West");
        this.lNorth.setPreferredSize(new Dimension(1280, 130));
        this.add(this.lNorth, "North");
        this.lSouth.setPreferredSize(new Dimension(1280, 130));
        this.add(this.lSouth, "South");
        this.lEast.setPreferredSize(new Dimension(100, 720));
        this.add(this.lEast, "East");
        this.btnStart.setUI(new MenuButtonUI());
        this.btnStart.setBackground(this.c.gray);
        this.btnStart.setFont(this.btnFont);
        this.btnStart.setForeground(this.c.white);
        this.pBtnList.add(this.btnStart);
        this.btnHighScore.setUI(new MenuButtonUI());
        this.btnHighScore.setBackground(this.c.gray);
        this.btnHighScore.setFont(this.btnFont);
        this.btnHighScore.setForeground(this.c.white);
        this.pBtnList.add(this.btnHighScore);
        this.btnHelp.setUI(new MenuButtonUI());
        this.btnHelp.setBackground(this.c.gray);
        this.btnHelp.setFont(this.btnFont);
        this.btnHelp.setForeground(this.c.white);
        this.pBtnList.add(this.btnHelp);
        this.btnExit.setUI(new MenuButtonUI());
        this.btnExit.setBackground(this.c.gray);
        this.btnExit.setFont(this.btnFont);
        this.btnExit.setForeground(this.c.white);
        this.pBtnList.add(this.btnExit);
        this.pBtnList.setBackground(this.c.brown);
        this.add(this.pBtnList, "Center");
    }
}
