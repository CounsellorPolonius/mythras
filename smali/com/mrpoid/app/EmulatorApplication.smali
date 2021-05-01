.class public Lcom/mrpoid/app/EmulatorApplication;
.super Landroid/app/Application;
.source "EmulatorApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 31
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 32
    invoke-static {p0}, Lcom/mrpoid/MrpoidMain;->init1(Landroid/content/Context;)V

    return-void
.end method
