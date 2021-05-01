.class public Lcom/mrpoid/app/EmulatorActivity;
.super Lcom/mrpoid/app/BaseActivity;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/mrpoid/core/MrDefines;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static APP_ACTIVITY_NAME:Ljava/lang/String; = "com.mrpoid.apps.AppActivity0"

.field public static APP_SERVICE_NAME:Ljava/lang/String; = "com.mrpoid.apps.AppService0"

.field private static final INFO_TYPE_KEY_SPRITE:I = 0x3e9

.field private static final MSG_ID_KEY_DOWN:I = 0x3f4

.field private static final MSG_ID_KEY_UP:I = 0x3eb

.field private static final MSG_ID_UPDATE:I = 0x3ea

.field private static final MSG_ID_UPDATE_INFO_TEXT:I = 0x3ec

.field private static final REQ_GET_IMAGE:I = 0x3ea

.field private static final REQ_SHOWEDIT:I = 0x3e9

.field public static SMS_DEL_MODE:Z = false

.field static final TAG:Ljava/lang/String; = "EmulatorActivity"

.field private static final TOOLS:[Ljava/lang/String;

.field private static final dsmDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private static final dsmMenuItemClickListener:Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private cfg:Lcom/mrpoid/core/EmuConfig;

.field private continer:Landroid/view/ViewGroup;

.field private dsmDialog:Landroid/support/v7/app/AlertDialog;

.field private dsmDialogBuilder:Landroid/support/v7/app/AlertDialog$Builder;

.field private dsmMenuBuilder:Landroid/support/v7/app/AlertDialog$Builder;

.field private dsmMenuDialog:Landroid/support/v7/app/AlertDialog;

.field private dsmMenuItemCount:I

.field private dsmMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emulator:Lcom/mrpoid/core/Emulator;

.field private emulatorView:Landroid/view/View;

.field public handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private keypad:Lcom/mrpoid/game/keypad/Keypad;

.field public mEntryActivity:Ljava/lang/String;

.field public mEntryMrp:Ljava/lang/String;

.field private final mKeyEventListener:Lcom/mrpoid/game/keypad/Keypad$OnKeyEventListener;

.field private mKeySprite:Lcom/mrpoid/game/keysprite/KeySprite;

.field public mMrpAppId:Ljava/lang/String;

.field public mMrpAppName:Ljava/lang/String;

.field private mPaused:Z

.field private mrpInputDialog:Landroid/app/Dialog;

.field private mrpInputEdit:Landroid/widget/EditText;

.field private navBarView:Landroid/view/View;

.field private statusBarView:Landroid/view/View;

.field private tmpChoice:I

.field private tvInfo:Landroid/widget/TextView;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 646
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6309\u952e\u7cbe\u7075"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/mrpoid/app/EmulatorActivity;->TOOLS:[Ljava/lang/String;

    .line 820
    new-instance v0, Lcom/mrpoid/app/EmulatorActivity$14;

    invoke-direct {v0}, Lcom/mrpoid/app/EmulatorActivity$14;-><init>()V

    sput-object v0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 869
    new-instance v0, Lcom/mrpoid/app/EmulatorActivity$15;

    invoke-direct {v0}, Lcom/mrpoid/app/EmulatorActivity$15;-><init>()V

    sput-object v0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/mrpoid/app/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 818
    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialog:Landroid/support/v7/app/AlertDialog;

    .line 819
    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialogBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    .line 865
    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuDialog:Landroid/support/v7/app/AlertDialog;

    .line 866
    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    .line 867
    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 868
    iput v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItemCount:I

    .line 940
    new-instance v0, Lcom/mrpoid/app/EmulatorActivity$17;

    invoke-direct {v0, p0}, Lcom/mrpoid/app/EmulatorActivity$17;-><init>(Lcom/mrpoid/app/EmulatorActivity;)V

    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->mKeyEventListener:Lcom/mrpoid/game/keypad/Keypad$OnKeyEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mrpoid/app/EmulatorActivity;)Lcom/mrpoid/core/EmuConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/mrpoid/app/EmulatorActivity;->cfg:Lcom/mrpoid/core/EmuConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mrpoid/app/EmulatorActivity;)Lcom/mrpoid/core/Emulator;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/mrpoid/app/EmulatorActivity;->emulator:Lcom/mrpoid/core/Emulator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mrpoid/app/EmulatorActivity;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/mrpoid/app/EmulatorActivity;->runTool(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mrpoid/app/EmulatorActivity;)Landroid/widget/EditText;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/mrpoid/app/EmulatorActivity;->mrpInputEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mrpoid/app/EmulatorActivity;)Lcom/mrpoid/game/keysprite/KeySprite;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/mrpoid/app/EmulatorActivity;->mKeySprite:Lcom/mrpoid/game/keysprite/KeySprite;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mrpoid/app/EmulatorActivity;Lcom/mrpoid/game/keysprite/KeySprite;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/mrpoid/app/EmulatorActivity;->runKeySprite(Lcom/mrpoid/game/keysprite/KeySprite;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mrpoid/app/EmulatorActivity;)Landroid/view/View;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/mrpoid/app/EmulatorActivity;->emulatorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mrpoid/app/EmulatorActivity;)Landroid/os/Vibrator;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/mrpoid/app/EmulatorActivity;->vibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method private backFroground()V
    .locals 1

    const-string v0, "com.mrpoid.actions.BACKGROUND"

    .line 718
    invoke-virtual {p0, v0}, Lcom/mrpoid/app/EmulatorActivity;->startAppService(Ljava/lang/String;)V

    return-void
.end method

.method private entryBackground()V
    .locals 1

    const-string v0, "com.mrpoid.actions.FOREGROUND"

    .line 714
    invoke-virtual {p0, v0}, Lcom/mrpoid/app/EmulatorActivity;->startAppService(Ljava/lang/String;)V

    return-void
.end method

.method private getActivity()Lcom/mrpoid/app/EmulatorActivity;
    .locals 0

    return-object p0
.end method

.method private initEntrys()V
    .locals 7

    .line 171
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "entryMrp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "entryActivity"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    sget-object v2, Lcom/mrpoid/app/EmulatorActivity;->APP_ACTIVITY_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/mrpoid/app/EmulatorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const-string v0, "entryMrp"

    .line 176
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "entryMrp"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "entryActivity"

    .line 183
    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 185
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "entryActivity"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    .line 194
    :cond_2
    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->mEntryMrp:Ljava/lang/String;

    .line 195
    iput-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->mEntryActivity:Ljava/lang/String;

    .line 196
    invoke-static {v0}, Lcom/mrpoid/MrpUtils;->readMrpLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->mMrpAppName:Ljava/lang/String;

    .line 197
    invoke-static {v0}, Lcom/mrpoid/MrpUtils;->readMrpId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->mMrpAppId:Ljava/lang/String;

    return-void

    .line 189
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->finish()V

    const-string v0, "\u542f\u52a8\u6587\u4ef6\u4e22\u5931\uff01"

    .line 190
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private runKeySprite(Lcom/mrpoid/game/keysprite/KeySprite;)V
    .locals 2

    .line 663
    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->mKeySprite:Lcom/mrpoid/game/keysprite/KeySprite;

    .line 664
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->tvInfo:Landroid/widget/TextView;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 666
    new-instance v0, Lcom/mrpoid/app/EmulatorActivity$8;

    invoke-direct {v0, p0}, Lcom/mrpoid/app/EmulatorActivity$8;-><init>(Lcom/mrpoid/app/EmulatorActivity;)V

    invoke-interface {p1, v0}, Lcom/mrpoid/game/keysprite/KeySprite;->run(Lcom/mrpoid/game/keysprite/KeyEventListener;)V

    return-void
.end method

.method private runTool(I)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 703
    :cond_0
    invoke-direct {p0}, Lcom/mrpoid/app/EmulatorActivity;->showKeySpriteDialog()V

    :goto_0
    return-void
.end method

.method private showKeySpriteDialog()V
    .locals 2

    .line 687
    new-instance v0, Lcom/mrpoid/game/keysprite/ChooserFragment;

    invoke-direct {v0}, Lcom/mrpoid/game/keysprite/ChooserFragment;-><init>()V

    new-instance v1, Lcom/mrpoid/app/EmulatorActivity$9;

    invoke-direct {v1, p0}, Lcom/mrpoid/app/EmulatorActivity$9;-><init>(Lcom/mrpoid/app/EmulatorActivity;)V

    invoke-virtual {v0, v1}, Lcom/mrpoid/game/keysprite/ChooserFragment;->setOnChooseLitener(Lcom/mrpoid/game/keysprite/OnChooseLitener;)Lcom/mrpoid/game/keysprite/ChooserFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mrpoid/app/EmulatorActivity;->showFragmentDialog(Landroid/support/v4/app/DialogFragment;)V

    return-void
.end method

.method private stopKeySprite()V
    .locals 4

    .line 653
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->mKeySprite:Lcom/mrpoid/game/keysprite/KeySprite;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->mKeySprite:Lcom/mrpoid/game/keysprite/KeySprite;

    invoke-interface {v0}, Lcom/mrpoid/game/keysprite/KeySprite;->stop()V

    const/4 v0, 0x0

    .line 655
    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->mKeySprite:Lcom/mrpoid/game/keysprite/KeySprite;

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "EmulatorActivity"

    const-string v1, "stopKeySprite"

    .line 659
    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dsmDialogReClose()V
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 860
    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialog:Landroid/support/v7/app/AlertDialog;

    .line 861
    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialogBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    return-void
.end method

.method public dsmDialogReShow(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 841
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 842
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mrpoid/app/EmulatorActivity;->dsmDialogShow(Ljava/lang/String;Ljava/lang/String;I)V

    .line 844
    :cond_1
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 845
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    if-ne p3, p2, :cond_2

    goto :goto_0

    .line 849
    :cond_2
    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialog:Landroid/support/v7/app/AlertDialog;

    move-object v2, v0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, p1, v0, v2}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 847
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/mrpoid/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mrpoid/app/EmulatorActivity;->dsmDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    const/4 p1, 0x2

    const/4 v1, -0x2

    if-eq p3, p1, :cond_5

    if-ne p3, p2, :cond_4

    goto :goto_2

    .line 854
    :cond_4
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialog:Landroid/support/v7/app/AlertDialog;

    move-object p2, v0

    check-cast p2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v0, p2}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    .line 852
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/mrpoid/R$string;->cancel:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/mrpoid/app/EmulatorActivity;->dsmDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, p2, p3}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_3
    return-void
.end method

.method public dsmDialogShow(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 829
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/mrpoid/app/EmulatorActivity;->getActivity()Lcom/mrpoid/app/EmulatorActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialogBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    .line 830
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialogBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    if-ne p3, p1, :cond_1

    .line 832
    :cond_0
    iget-object p2, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialogBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    sget v0, Lcom/mrpoid/R$string;->ok:I

    sget-object v1, Lcom/mrpoid/app/EmulatorActivity;->dsmDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    :cond_1
    const/4 p2, 0x2

    if-eq p3, p2, :cond_2

    if-ne p3, p1, :cond_3

    .line 834
    :cond_2
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialogBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    sget p2, Lcom/mrpoid/R$string;->cancel:I

    sget-object p3, Lcom/mrpoid/app/EmulatorActivity;->dsmDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 836
    :cond_3
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialogBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialog:Landroid/support/v7/app/AlertDialog;

    .line 837
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public dsmMenuClose()V
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 926
    iput-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuDialog:Landroid/support/v7/app/AlertDialog;

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 930
    iput-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItems:Ljava/util/List;

    :cond_1
    const/4 v0, 0x0

    .line 932
    iput v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItemCount:I

    .line 933
    iput-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    return-void
.end method

.method public dsmMenuCreate(Ljava/lang/String;I)V
    .locals 2

    .line 878
    iput p2, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItemCount:I

    .line 879
    iget v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItemCount:I

    if-gtz v0, :cond_0

    return-void

    .line 882
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/mrpoid/app/EmulatorActivity;->getActivity()Lcom/mrpoid/app/EmulatorActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    .line 883
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 885
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    sget v0, Lcom/mrpoid/R$string;->cancel:I

    new-instance v1, Lcom/mrpoid/app/EmulatorActivity$16;

    invoke-direct {v1, p0}, Lcom/mrpoid/app/EmulatorActivity$16;-><init>(Lcom/mrpoid/app/EmulatorActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 893
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItems:Ljava/util/List;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 895
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItems:Ljava/util/List;

    const-string v1, "null"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dsmMenuReShow()V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 918
    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuDialog:Landroid/support/v7/app/AlertDialog;

    .line 920
    :cond_0
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuShow()V

    return-void
.end method

.method public dsmMenuSetItem(Ljava/lang/String;I)V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItems:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItemCount:I

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItems:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public dsmMenuShow()V
    .locals 3

    .line 907
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItems:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItemCount:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItems:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    sget-object v2, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 911
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuBuilder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuDialog:Landroid/support/v7/app/AlertDialog;

    .line 912
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->dsmMenuDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getNavBarHeight()I
    .locals 5

    .line 252
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mrpoid/app/EmulatorActivity;->hasNavBar(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1
    return v1
.end method

.method public getStatusBarHeight()I
    .locals 4

    .line 245
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3ec

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 130
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    .line 132
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->tvInfo:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->tvInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->tvInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->tvInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 122
    :cond_4
    iget-boolean p1, p0, Lcom/mrpoid/app/EmulatorActivity;->mPaused:Z

    if-eqz p1, :cond_5

    goto :goto_1

    .line 125
    :cond_5
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public hasNavBar(Landroid/content/res/Resources;)Z
    .locals 3

    const-string v0, "config_showNavigationBar"

    const-string v1, "bool"

    const-string v2, "android"

    .line 262
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 263
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method hideNotify1()V
    .locals 2

    .line 497
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    .line 498
    sget v1, Lcom/mrpoid/app/EmulatorService;->PROC_ID:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    return-void
.end method

.method initPad()V
    .locals 4

    .line 205
    new-instance v0, Lcom/mrpoid/game/keypad/Keypad;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mrpoid/game/keypad/Keypad;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->keypad:Lcom/mrpoid/game/keypad/Keypad;

    .line 207
    new-instance v0, Lcom/mrpoid/game/keypad/KeypadView;

    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->keypad:Lcom/mrpoid/game/keypad/Keypad;

    invoke-direct {v0, p0, v1}, Lcom/mrpoid/game/keypad/KeypadView;-><init>(Landroid/content/Context;Lcom/mrpoid/game/keypad/Keypad;)V

    .line 208
    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->continer:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->keypad:Lcom/mrpoid/game/keypad/Keypad;

    invoke-virtual {v1, v0}, Lcom/mrpoid/game/keypad/Keypad;->attachView(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->keypad:Lcom/mrpoid/game/keypad/Keypad;

    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->mKeyEventListener:Lcom/mrpoid/game/keypad/Keypad$OnKeyEventListener;

    invoke-virtual {v0, v1}, Lcom/mrpoid/game/keypad/Keypad;->setOnKeyEventListener(Lcom/mrpoid/game/keypad/Keypad$OnKeyEventListener;)V

    .line 212
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->keypad:Lcom/mrpoid/game/keypad/Keypad;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mrpoid/game/keypad/Keypad;->setMode(I)V

    .line 213
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->keypad:Lcom/mrpoid/game/keypad/Keypad;

    invoke-static {}, Lcom/mrpoid/core/EmuConfig;->getInstance()Lcom/mrpoid/core/EmuConfig;

    move-result-object v1

    iget v1, v1, Lcom/mrpoid/core/EmuConfig;->padAlpha:I

    invoke-virtual {v0, v1}, Lcom/mrpoid/game/keypad/Keypad;->setOpacity(I)V

    return-void
.end method

.method initWindow()V
    .locals 2

    .line 304
    sget v0, Lcom/mrpoid/R$id;->status_bar:I

    invoke-virtual {p0, v0}, Lcom/mrpoid/app/EmulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->statusBarView:Landroid/view/View;

    .line 305
    sget v0, Lcom/mrpoid/R$id;->nav_bar:I

    invoke-virtual {p0, v0}, Lcom/mrpoid/app/EmulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->navBarView:Landroid/view/View;

    .line 307
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 311
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 313
    new-instance v1, Lcom/mrpoid/app/EmulatorActivity$2;

    invoke-direct {v1, p0}, Lcom/mrpoid/app/EmulatorActivity$2;-><init>(Lcom/mrpoid/app/EmulatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-boolean v0, v0, Lcom/mrpoid/core/EmuConfig;->fullScreen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 336
    invoke-virtual {p0, v0}, Lcom/mrpoid/app/EmulatorActivity;->setFullScreen(Z)V

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->resetBar2()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    const/4 v0, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 725
    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->emulator:Lcom/mrpoid/core/Emulator;

    const-string v3, "input"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mrpoid/core/Emulator;->setEditInputContent(Ljava/lang/String;)V

    .line 726
    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->emulator:Lcom/mrpoid/core/Emulator;

    invoke-virtual {v1, v0, v2, v2}, Lcom/mrpoid/core/Emulator;->postMrpEvent(III)V

    goto :goto_0

    .line 728
    :cond_0
    iget-object v3, p0, Lcom/mrpoid/app/EmulatorActivity;->emulator:Lcom/mrpoid/core/Emulator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mrpoid/core/Emulator;->setEditInputContent(Ljava/lang/String;)V

    .line 729
    iget-object v3, p0, Lcom/mrpoid/app/EmulatorActivity;->emulator:Lcom/mrpoid/core/Emulator;

    invoke-virtual {v3, v0, v1, v2}, Lcom/mrpoid/core/Emulator;->postMrpEvent(III)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    .line 747
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/mrpoid/app/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/mrpoid/R$id;->tv_info:I

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/mrpoid/app/EmulatorActivity;->stopKeySprite()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 374
    invoke-super {p0, p1}, Lcom/mrpoid/app/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 376
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->resetBar2()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 503
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/mrpoid/R$id;->mi_close:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 504
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->emulator:Lcom/mrpoid/core/Emulator;

    invoke-virtual {p1}, Lcom/mrpoid/core/Emulator;->stop()V

    .line 505
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->finish()V

    goto :goto_0

    .line 506
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/mrpoid/R$id;->mi_scnshot:I

    if-ne v0, v1, :cond_1

    .line 507
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->emulator:Lcom/mrpoid/core/Emulator;

    invoke-virtual {p1}, Lcom/mrpoid/core/Emulator;->getScreen()Lcom/mrpoid/core/EmuScreen;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mrpoid/core/EmuScreen;->screenShot(Landroid/content/Context;)V

    goto :goto_0

    .line 508
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/mrpoid/R$id;->mi_switch_keypad:I

    if-ne v0, v1, :cond_2

    .line 509
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->keypad:Lcom/mrpoid/game/keypad/Keypad;

    invoke-virtual {p1}, Lcom/mrpoid/game/keypad/Keypad;->switchMode()V

    goto :goto_0

    .line 510
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/mrpoid/R$id;->mi_scaling_mode:I

    if-ne v0, v1, :cond_3

    .line 511
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->showScaleDialog()V

    goto :goto_0

    .line 512
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/mrpoid/R$id;->mi_tools:I

    if-ne v0, v1, :cond_4

    .line 513
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->showToolListDialog()V

    goto :goto_0

    .line 518
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/mrpoid/R$id;->mi_switch_full:I

    if-ne v0, v1, :cond_5

    .line 519
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-boolean v0, v0, Lcom/mrpoid/core/EmuConfig;->fullScreen:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p1, Lcom/mrpoid/core/EmuConfig;->fullScreen:Z

    .line 520
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-boolean p1, p1, Lcom/mrpoid/core/EmuConfig;->fullScreen:Z

    invoke-virtual {p0, p1}, Lcom/mrpoid/app/EmulatorActivity;->setFullScreen(Z)V

    goto :goto_0

    .line 522
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/mrpoid/R$id;->mi_exit_all:I

    if-ne p1, v0, :cond_6

    .line 523
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_6
    :goto_0
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 218
    invoke-super {p0, p1}, Lcom/mrpoid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 219
    sget p1, Lcom/mrpoid/R$layout;->activity_emulator:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/app/EmulatorActivity;->setContentView(I)V

    .line 221
    invoke-direct {p0}, Lcom/mrpoid/app/EmulatorActivity;->initEntrys()V

    .line 223
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->handler:Landroid/os/Handler;

    const-string p1, "layout_inflater"

    .line 224
    invoke-virtual {p0, p1}, Lcom/mrpoid/app/EmulatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->inflater:Landroid/view/LayoutInflater;

    const-string p1, "vibrator"

    .line 225
    invoke-virtual {p0, p1}, Lcom/mrpoid/app/EmulatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->vibrator:Landroid/os/Vibrator;

    .line 227
    invoke-static {}, Lcom/mrpoid/core/Emulator;->getInstance()Lcom/mrpoid/core/Emulator;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->emulator:Lcom/mrpoid/core/Emulator;

    .line 228
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->emulator:Lcom/mrpoid/core/Emulator;

    invoke-virtual {p1, p0}, Lcom/mrpoid/core/Emulator;->initConfig(Landroid/content/Context;)Lcom/mrpoid/core/EmuConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->cfg:Lcom/mrpoid/core/EmuConfig;

    .line 230
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->emulator:Lcom/mrpoid/core/Emulator;

    invoke-virtual {p1, p0}, Lcom/mrpoid/core/Emulator;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->emulatorView:Landroid/view/View;

    .line 231
    sget p1, Lcom/mrpoid/R$id;->content:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/app/EmulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->continer:Landroid/view/ViewGroup;

    .line 232
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->continer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->emulatorView:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->emulatorView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mrpoid/app/EmulatorActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 235
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->initPad()V

    .line 237
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->initWindow()V

    .line 239
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->emulator:Lcom/mrpoid/core/Emulator;

    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->mEntryMrp:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/mrpoid/core/Emulator;->lunch(Lcom/mrpoid/app/EmulatorActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->emulatorView:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/mrpoid/R$menu;->emu_main:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 534
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/mrpoid/app/BaseActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 421
    invoke-super {p0}, Lcom/mrpoid/app/BaseActivity;->onDestroy()V

    const-string v0, "EmulatorActivity"

    const-string v1, "onDestroy"

    .line 422
    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->emulator:Lcom/mrpoid/core/Emulator;

    invoke-virtual {v0}, Lcom/mrpoid/core/Emulator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EmulatorActivity"

    const-string v1, "\u540e\u53f0\u8fd0\u884c\u88ab\u6740\uff01"

    .line 427
    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->emulator:Lcom/mrpoid/core/Emulator;

    invoke-virtual {v0}, Lcom/mrpoid/core/Emulator;->onActivityDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const/4 v0, 0x0

    .line 393
    invoke-virtual {p0, v0, v0}, Lcom/mrpoid/app/EmulatorActivity;->overridePendingTransition(II)V

    .line 394
    invoke-super {p0}, Lcom/mrpoid/app/BaseActivity;->onPause()V

    const-string v0, "EmulatorActivity"

    const-string v1, "onPause"

    .line 396
    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lcom/mrpoid/app/EmulatorActivity;->mPaused:Z

    .line 399
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->emulator:Lcom/mrpoid/core/Emulator;

    invoke-virtual {v0}, Lcom/mrpoid/core/Emulator;->pause()V

    .line 401
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->cfg:Lcom/mrpoid/core/EmuConfig;

    invoke-virtual {v0, p0}, Lcom/mrpoid/core/EmuConfig;->save(Landroid/content/Context;)V

    .line 403
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->keypad:Lcom/mrpoid/game/keypad/Keypad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mrpoid/game/keypad/Keypad;->setOnKeyEventListener(Lcom/mrpoid/game/keypad/Keypad$OnKeyEventListener;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "EmulatorActivity"

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hasSaved"

    const/4 v1, 0x0

    .line 450
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "curMrpPath"

    .line 451
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "EmulatorActivity"

    const-string v1, "\u5f02\u5e38\u6062\u590d\u6210\u529f"

    .line 453
    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->finish()V

    goto :goto_0

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->finish()V

    .line 462
    :goto_0
    invoke-super {p0, p1}, Lcom/mrpoid/app/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v0, 0x0

    .line 410
    invoke-virtual {p0, v0, v0}, Lcom/mrpoid/app/EmulatorActivity;->overridePendingTransition(II)V

    .line 411
    invoke-super {p0}, Lcom/mrpoid/app/BaseActivity;->onResume()V

    const-string v1, "EmulatorActivity"

    const-string v2, "onResume"

    .line 413
    invoke-static {v1, v2}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iput-boolean v0, p0, Lcom/mrpoid/app/EmulatorActivity;->mPaused:Z

    .line 416
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->emulator:Lcom/mrpoid/core/Emulator;

    invoke-virtual {v0}, Lcom/mrpoid/core/Emulator;->resume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "EmulatorActivity"

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hasSaved"

    const/4 v1, 0x1

    .line 437
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "curMrpPath"

    .line 438
    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->emulator:Lcom/mrpoid/core/Emulator;

    invoke-virtual {v1}, Lcom/mrpoid/core/Emulator;->getRunningMrpPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-super {p0, p1}, Lcom/mrpoid/app/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public postToast(Ljava/lang/String;)V
    .locals 1

    .line 153
    new-instance v0, Lcom/mrpoid/app/EmulatorActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/mrpoid/app/EmulatorActivity$1;-><init>(Lcom/mrpoid/app/EmulatorActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mrpoid/app/EmulatorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postUIRunable(Ljava/lang/Runnable;)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reqCallPhone(Ljava/lang/String;)V
    .locals 3

    const-string v0, "android.permission.CALL_PHONE"

    .line 797
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mrpoid/app/EmulatorActivity;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    return-void

    .line 800
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/mrpoid/R$string;->hint:I

    .line 801
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mrpoid/app/EmulatorActivity;->mMrpAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u6c42\u62e8\u6253\uff1a\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 802
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/mrpoid/R$string;->accept:I

    new-instance v2, Lcom/mrpoid/app/EmulatorActivity$13;

    invoke-direct {v2, p0, p1}, Lcom/mrpoid/app/EmulatorActivity$13;-><init>(Lcom/mrpoid/app/EmulatorActivity;Ljava/lang/String;)V

    .line 805
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/mrpoid/R$string;->refused:I

    const/4 v1, 0x0

    .line 812
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 813
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 814
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public reqSendSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 757
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/mrpoid/R$string;->hint:I

    .line 758
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mrpoid/app/EmulatorActivity;->mMrpAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u6c42\u53d1\u9001\u77ed\u4fe1\uff1a\n\u5730\u5740\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\u5185\u5bb9\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 759
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/mrpoid/R$string;->accept:I

    new-instance v2, Lcom/mrpoid/app/EmulatorActivity$12;

    invoke-direct {v2, p0, p1, p2}, Lcom/mrpoid/app/EmulatorActivity$12;-><init>(Lcom/mrpoid/app/EmulatorActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/mrpoid/R$string;->refused:I

    new-instance v0, Lcom/mrpoid/app/EmulatorActivity$11;

    invoke-direct {v0, p0}, Lcom/mrpoid/app/EmulatorActivity$11;-><init>(Lcom/mrpoid/app/EmulatorActivity;)V

    .line 770
    invoke-virtual {p1, p2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/mrpoid/app/EmulatorActivity$10;

    invoke-direct {p2, p0}, Lcom/mrpoid/app/EmulatorActivity$10;-><init>(Lcom/mrpoid/app/EmulatorActivity;)V

    .line 778
    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 785
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 786
    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 787
    sget-boolean p2, Lcom/mrpoid/app/EmulatorActivity;->SMS_DEL_MODE:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 788
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method resetBar()V
    .locals 4

    .line 267
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 269
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/16 v3, 0x8

    if-ge v1, v2, :cond_1

    .line 270
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->statusBarView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->navBarView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->statusBarView:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 274
    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->navBarView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 276
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getStatusBarHeight()I

    move-result v1

    if-nez v0, :cond_3

    if-gtz v1, :cond_2

    goto :goto_1

    .line 280
    :cond_2
    iget-object v2, p0, Lcom/mrpoid/app/EmulatorActivity;->statusBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 278
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->statusBarView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :goto_2
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getNavBarHeight()I

    move-result v1

    if-nez v0, :cond_5

    if-gtz v1, :cond_4

    goto :goto_3

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->navBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4

    .line 284
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->navBarView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method resetBar2()V
    .locals 4

    .line 292
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 293
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    .line 294
    iget-object v2, p0, Lcom/mrpoid/app/EmulatorActivity;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-boolean v2, v2, Lcom/mrpoid/core/EmuConfig;->fullScreen:Z

    .line 295
    iget-object v2, p0, Lcom/mrpoid/app/EmulatorActivity;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-boolean v2, v2, Lcom/mrpoid/core/EmuConfig;->fullScreen:Z

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->continer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->continer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_2
    :goto_1
    return-void
.end method

.method setFullScreen(Z)V
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 p1, 0x1406

    .line 357
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 363
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 365
    :goto_0
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->resetBar2()V

    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->statusBarView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method showFragmentDialog(Landroid/support/v4/app/DialogFragment;)V
    .locals 2

    .line 643
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showMrpInputer(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 578
    new-instance v6, Lcom/mrpoid/app/EmulatorActivity$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mrpoid/app/EmulatorActivity$5;-><init>(Lcom/mrpoid/app/EmulatorActivity;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v6}, Lcom/mrpoid/app/EmulatorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method showMrpInputer_i(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5

    .line 587
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->mrpInputDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 588
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 594
    iget-object v2, p0, Lcom/mrpoid/app/EmulatorActivity;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/mrpoid/R$layout;->dialog_input:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 595
    sget v3, Lcom/mrpoid/R$id;->editText1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mrpoid/app/EmulatorActivity;->mrpInputEdit:Landroid/widget/EditText;

    .line 596
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 597
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/mrpoid/R$string;->ok:I

    new-instance v3, Lcom/mrpoid/app/EmulatorActivity$7;

    invoke-direct {v3, p0}, Lcom/mrpoid/app/EmulatorActivity$7;-><init>(Lcom/mrpoid/app/EmulatorActivity;)V

    .line 598
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/mrpoid/R$string;->cancel:I

    new-instance v3, Lcom/mrpoid/app/EmulatorActivity$6;

    invoke-direct {v3, p0}, Lcom/mrpoid/app/EmulatorActivity$6;-><init>(Lcom/mrpoid/app/EmulatorActivity;)V

    .line 605
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 612
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->mrpInputDialog:Landroid/app/Dialog;

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->mrpInputDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 617
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->mrpInputEdit:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->mrpInputEdit:Landroid/widget/EditText;

    const/4 p2, 0x1

    new-array v0, p2, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    const p1, 0x21001

    goto :goto_0

    :cond_1
    if-ne p3, p2, :cond_2

    const p1, 0x20002

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    if-ne p3, p1, :cond_3

    const/16 p1, 0x81

    goto :goto_0

    :cond_3
    const p1, 0x20001

    .line 633
    :goto_0
    iget-object p2, p0, Lcom/mrpoid/app/EmulatorActivity;->mrpInputEdit:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 635
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity;->mrpInputDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method showNotify1()V
    .locals 4

    .line 478
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "mrp"

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5728\u8fd0\u884c \u8fdb\u7a0b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mrpoid/app/EmulatorService;->PROC_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 480
    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->mMrpAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 482
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 483
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x20000

    .line 484
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    .line 485
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    .line 487
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    const v1, 0x108008a

    .line 488
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 489
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mrpoid/R$drawable;->ic_notify:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 492
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    .line 493
    sget v2, Lcom/mrpoid/app/EmulatorService;->PROC_ID:I

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showOptMenu()V
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity;->emulatorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mrpoid/app/EmulatorActivity;->openContextMenu(Landroid/view/View;)V

    return-void
.end method

.method showScaleDialog()V
    .locals 4

    .line 538
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/mrpoid/R$string;->scaling_mode:I

    .line 539
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/mrpoid/R$array;->scaling_mode_entries:I

    iget-object v2, p0, Lcom/mrpoid/app/EmulatorActivity;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget v2, v2, Lcom/mrpoid/core/EmuConfig;->scaleMode:I

    new-instance v3, Lcom/mrpoid/app/EmulatorActivity$3;

    invoke-direct {v3, p0}, Lcom/mrpoid/app/EmulatorActivity$3;-><init>(Lcom/mrpoid/app/EmulatorActivity;)V

    .line 540
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/mrpoid/R$string;->close:I

    const/4 v2, 0x0

    .line 545
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method showToolListDialog()V
    .locals 3

    .line 551
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/mrpoid/R$string;->tools:I

    .line 552
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/mrpoid/app/EmulatorActivity;->TOOLS:[Ljava/lang/String;

    new-instance v2, Lcom/mrpoid/app/EmulatorActivity$4;

    invoke-direct {v2, p0}, Lcom/mrpoid/app/EmulatorActivity$4;-><init>(Lcom/mrpoid/app/EmulatorActivity;)V

    .line 553
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public startAppService(Ljava/lang/String;)V
    .locals 1

    .line 710
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/mrpoid/app/EmulatorActivity;->APP_SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mrpoid/app/EmulatorActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public updateTaskUI()V
    .locals 2

    .line 382
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5192\u6ce1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mrpoid/app/EmulatorActivity;->mMrpAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1, v0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/mrpoid/app/EmulatorActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method
