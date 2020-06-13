// 
// Decompiled by Procyon v0.5.36
// 

package Visual;

import java.awt.Cursor;
import javax.swing.border.Border;
import javax.swing.border.EmptyBorder;
import javax.swing.AbstractButton;
import javax.swing.JComponent;
import javax.swing.plaf.basic.BasicButtonUI;

public class TransparentButtonUI extends BasicButtonUI
{
    @Override
    public void installUI(final JComponent c) {
        super.installUI(c);
        final AbstractButton button = (AbstractButton)c;
        button.setOpaque(false);
        button.setBorder(new EmptyBorder(5, 15, 5, 15));
        button.setCursor(new Cursor(12));
    }
}
