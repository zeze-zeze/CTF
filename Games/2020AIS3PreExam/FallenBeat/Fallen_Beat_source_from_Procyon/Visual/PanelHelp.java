// 
// Decompiled by Procyon v0.5.36
// 

package Visual;

import javax.swing.Icon;
import javax.swing.plaf.ButtonUI;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.BorderLayout;
import java.awt.LayoutManager;
import java.awt.GridLayout;
import javax.swing.JButton;
import java.awt.Font;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class PanelHelp extends JPanel
{
    MyColor c;
    JPanel pCenter;
    JPanel pSouth;
    JPanel pNorth;
    JLabel lWest;
    JLabel lEast;
    ImageIcon help1;
    ImageIcon help2;
    Font btnFont;
    public JButton btnBack;
    public JButton btnHell;
    
    public PanelHelp() {
        this.c = new MyColor();
        this.pCenter = new JPanel(new GridLayout(1, 2));
        this.pSouth = new JPanel();
        this.pNorth = new JPanel();
        this.lWest = new JLabel();
        this.lEast = new JLabel();
        this.help1 = new ImageIcon("images/Help/help_1.png");
        this.help2 = new ImageIcon("images/Help/help_2.png");
        this.btnFont = new Font("Dialog", 1, 35);
        this.btnBack = new JButton("Back");
        this.btnHell = new JButton();
        this.setLayout(new BorderLayout());
        this.setBackground(this.c.brown);
        this.lEast.setPreferredSize(new Dimension(100, 720));
        this.add(this.lEast, "East");
        this.lWest.setPreferredSize(new Dimension(100, 720));
        this.add(this.lWest, "West");
        this.btnHell.setUI(new TransparentButtonUI());
        this.btnHell.setBackground(this.c.gray);
        this.btnHell.setFont(this.btnFont);
        this.btnHell.setForeground(this.c.white);
        this.btnHell.setPreferredSize(new Dimension(150, 70));
        this.pNorth.add(this.btnHell);
        this.pNorth.setPreferredSize(new Dimension(1280, 100));
        this.pNorth.setBackground(this.c.brown);
        this.add(this.pNorth, "North");
        this.btnBack.setUI(new CommonButtonUI());
        this.btnBack.setBackground(this.c.gray);
        this.btnBack.setFont(this.btnFont);
        this.btnBack.setForeground(this.c.white);
        this.btnBack.setPreferredSize(new Dimension(150, 70));
        this.pSouth.add(this.btnBack);
        this.pSouth.setPreferredSize(new Dimension(1280, 100));
        this.pSouth.setBackground(this.c.brown);
        this.add(this.pSouth, "South");
        this.pCenter.add(new JLabel(this.help1));
        this.pCenter.add(new JLabel(this.help2));
        this.pCenter.setBackground(this.c.yellow);
        this.add(this.pCenter, "Center");
    }
}
