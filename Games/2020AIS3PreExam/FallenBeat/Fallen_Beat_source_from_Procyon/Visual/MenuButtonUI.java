// 
// Decompiled by Procyon v0.5.36
// 

package Visual;

import java.awt.Dimension;
import java.awt.Color;
import java.awt.RenderingHints;
import java.awt.Graphics2D;
import java.awt.Graphics;
import java.awt.Cursor;
import javax.swing.border.Border;
import javax.swing.border.EmptyBorder;
import javax.swing.AbstractButton;
import javax.swing.JComponent;
import javax.swing.plaf.basic.BasicButtonUI;

public class MenuButtonUI extends BasicButtonUI
{
    @Override
    public void installUI(final JComponent c) {
        super.installUI(c);
        final AbstractButton button = (AbstractButton)c;
        button.setOpaque(false);
        button.setBorder(new EmptyBorder(5, 15, 5, 15));
        button.setCursor(new Cursor(12));
    }
    
    @Override
    public void paint(final Graphics g, final JComponent c) {
        final AbstractButton b = (AbstractButton)c;
        int buttonEventStyleNum;
        if (b.getModel().isPressed()) {
            buttonEventStyleNum = 1;
        }
        else if (b.getModel().isRollover()) {
            buttonEventStyleNum = 2;
        }
        else {
            buttonEventStyleNum = 0;
        }
        this.paintBackground(g, b, buttonEventStyleNum);
        super.paint(g, c);
    }
    
    private void paintBackground(final Graphics g, final JComponent c, final int styleNumber) {
        final Dimension size = c.getSize();
        final Graphics2D g2 = (Graphics2D)g;
        g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        final int borderThickness = 5;
        final int[] xOuter = { 0, size.width, size.width, 0 };
        final int[] yOuter = { 35, 0, size.height - 35, size.height };
        final int[] xInner = { 5, size.width - 5, size.width - 5, 5 };
        final int[] yInner = { 40, 5, size.height - 40, size.height - 5 };
        switch (styleNumber) {
            case 1: {
                g.setColor(c.getBackground().brighter());
                g.fillPolygon(xOuter, yOuter, 4);
                g.setColor(c.getBackground().darker());
                g.fillPolygon(xInner, yInner, 4);
                break;
            }
            case 2: {
                g.setColor(Color.WHITE);
                g.fillPolygon(xOuter, yOuter, 4);
                g.setColor(c.getBackground());
                g.fillPolygon(xInner, yInner, 4);
                break;
            }
            default: {
                g.setColor(c.getBackground().brighter().brighter());
                g.fillPolygon(xOuter, yOuter, 4);
                g.setColor(c.getBackground());
                g.fillPolygon(xInner, yInner, 4);
                break;
            }
        }
    }
}
