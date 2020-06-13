// 
// Decompiled by Procyon v0.5.36
// 

package Visual;

import java.awt.Graphics;
import java.awt.LayoutManager;
import java.awt.Dimension;
import java.awt.image.ImageObserver;
import javax.swing.ImageIcon;
import java.awt.Image;
import javax.swing.JPanel;

public class PanelGaming extends JPanel
{
    private Image img;
    
    public PanelGaming() {
        this.img = new ImageIcon("images/Rail.png").getImage();
        final Dimension size = new Dimension(this.img.getWidth(null), this.img.getHeight(null));
        this.setPreferredSize(size);
        this.setMinimumSize(size);
        this.setMaximumSize(size);
        this.setSize(size);
        this.setLayout(null);
    }
    
    public void paintComponent(final Graphics g) {
        g.drawImage(this.img, 0, 0, null);
    }
}
