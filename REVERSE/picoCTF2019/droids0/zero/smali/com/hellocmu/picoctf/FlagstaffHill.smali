.class public Lcom/hellocmu/picoctf/FlagstaffHill;
.super Ljava/lang/Object;
.source "FlagstaffHill.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFlag(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "ctx"    # Landroid/content/Context;

    .line 11
    invoke-static {p0}, Lcom/hellocmu/picoctf/FlagstaffHill;->paprika(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PICO"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const-string v0, "Not Today..."

    return-object v0
.end method

.method public static native paprika(Ljava/lang/String;)Ljava/lang/String;
.end method
