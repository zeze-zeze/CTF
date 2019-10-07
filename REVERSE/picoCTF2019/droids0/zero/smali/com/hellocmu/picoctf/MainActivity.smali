.class public Lcom/hellocmu/picoctf/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field button:Landroid/widget/Button;

.field ctx:Landroid/content/Context;

.field text_bottom:Landroid/widget/TextView;

.field text_input:Landroid/widget/EditText;

.field text_top:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public buttonClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/hellocmu/picoctf/MainActivity;->text_input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/hellocmu/picoctf/MainActivity;->text_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hellocmu/picoctf/MainActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/hellocmu/picoctf/FlagstaffHill;->getFlag(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 25
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/hellocmu/picoctf/MainActivity;->setContentView(I)V

    .line 28
    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/hellocmu/picoctf/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hellocmu/picoctf/MainActivity;->text_top:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/hellocmu/picoctf/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hellocmu/picoctf/MainActivity;->text_bottom:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/hellocmu/picoctf/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hellocmu/picoctf/MainActivity;->text_input:Landroid/widget/EditText;

    .line 31
    invoke-virtual {p0}, Lcom/hellocmu/picoctf/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hellocmu/picoctf/MainActivity;->ctx:Landroid/content/Context;

    .line 33
    const-string v0, "hellojni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/hellocmu/picoctf/MainActivity;->text_top:Landroid/widget/TextView;

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 35
    return-void
.end method
