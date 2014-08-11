.class public Lcom/android/phone/SpeedDialList;
.super Landroid/app/Activity;
.source "SpeedDialList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SpeedDialList$gridView1OnClickListener;
    }
.end annotation


# static fields
.field private static final CONTACT_SEARCH_INTENT:Landroid/content/Intent;

.field public static final FAST_DIAL_PNG_ADD:[I

.field public static final FAST_DIAL_PNG_SOMEONE:[I

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private OldName:Ljava/lang/String;

.field private ReturnName:Ljava/lang/String;

.field private ReturnNumber:Ljava/lang/String;

.field private contactBtn:Landroid/widget/ImageButton;

.field private contactDelBtn:Landroid/widget/ImageButton;

.field private currentKey:I

.field private currentName:Ljava/lang/String;

.field private dialogDelEditView:Landroid/view/View;

.field private dialogEditView:Landroid/view/View;

.field private editViewDelNumber:Landroid/widget/EditText;

.field private editViewNumber:Landroid/widget/EditText;

.field private isContactInfo:Z

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSpeedDialMode:Lcom/android/phone/SpeedDialMode;

.field speedDialGridView:Landroid/widget/GridView;

.field private tmpPhoneNumber:[Ljava/lang/String;

.field private tmpphoneKey:[I

.field private tmpphoneName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/SpeedDialList;->NUM_PROJECTION:[Ljava/lang/String;

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/SpeedDialList;->CONTACT_SEARCH_INTENT:Landroid/content/Intent;

    .line 78
    sget-object v0, Lcom/android/phone/SpeedDialList;->CONTACT_SEARCH_INTENT:Landroid/content/Intent;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    sget-object v0, Lcom/android/phone/SpeedDialList;->CONTACT_SEARCH_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/SpeedDialList;->FAST_DIAL_PNG_ADD:[I

    .line 100
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/SpeedDialList;->FAST_DIAL_PNG_SOMEONE:[I

    return-void

    .line 97
    nop

    :array_0
    .array-data 0x4
        0x76t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
        0x79t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 100
    :array_1
    .array-data 0x4
        0x7et 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x80t 0x0t 0x2t 0x7ft
        0x81t 0x0t 0x2t 0x7ft
        0x82t 0x0t 0x2t 0x7ft
        0x83t 0x0t 0x2t 0x7ft
        0x84t 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SpeedDialList;->isContactInfo:Z

    .line 64
    new-instance v0, Lcom/android/phone/SpeedDialMode;

    invoke-direct {v0, p0}, Lcom/android/phone/SpeedDialMode;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/SpeedDialList;->mSpeedDialMode:Lcom/android/phone/SpeedDialMode;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SpeedDialList;->mHandler:Landroid/os/Handler;

    .line 117
    new-instance v0, Lcom/android/phone/SpeedDialList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SpeedDialList$1;-><init>(Lcom/android/phone/SpeedDialList;)V

    iput-object v0, p0, Lcom/android/phone/SpeedDialList;->mRunnable:Ljava/lang/Runnable;

    .line 291
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SpeedDialList;)Lcom/android/phone/SpeedDialMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/SpeedDialList;->mSpeedDialMode:Lcom/android/phone/SpeedDialMode;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/SpeedDialList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/SpeedDialList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/SpeedDialList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/SpeedDialList;->ReturnNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/SpeedDialList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/SpeedDialList;->ReturnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/SpeedDialList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/phone/SpeedDialList;->isContactInfo:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/SpeedDialList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/phone/SpeedDialList;->isContactInfo:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/phone/SpeedDialList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/phone/SpeedDialList;->currentName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/SpeedDialList;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/SpeedDialList;->tmpphoneKey:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/SpeedDialList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/phone/SpeedDialList;->currentKey:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/SpeedDialList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/phone/SpeedDialList;->currentKey:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/SpeedDialList;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/SpeedDialList;->editViewDelNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/SpeedDialList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/SpeedDialList;->OldName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/SpeedDialList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/phone/SpeedDialList;->OldName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/SpeedDialList;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/SpeedDialList;->editViewNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/phone/SpeedDialList;->CONTACT_SEARCH_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/SpeedDialList;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/SpeedDialList;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createClickAddMenuDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"

    .prologue
    .line 482
    const-string v4, "SpeedDialList"

    const-string v5, "$$$$ createClickAddMenuDialog..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 487
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c02a7

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 488
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 489
    .local v0, alertDialog:Landroid/app/AlertDialog;
    iget-object v4, p0, Lcom/android/phone/SpeedDialList;->dialogEditView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 492
    iget-object v4, p0, Lcom/android/phone/SpeedDialList;->contactBtn:Landroid/widget/ImageButton;

    if-nez v4, :cond_0

    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v4}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v4

    .line 493
    :cond_0
    iget-object v4, p0, Lcom/android/phone/SpeedDialList;->contactBtn:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/phone/SpeedDialList$9;

    invoke-direct {v5, p0}, Lcom/android/phone/SpeedDialList$9;-><init>(Lcom/android/phone/SpeedDialList;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object v4, p0, Lcom/android/phone/SpeedDialList;->dialogEditView:Landroid/view/View;

    const v5, 0x7f0700ad

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 501
    .local v3, completeBtn:Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/phone/SpeedDialList;->dialogEditView:Landroid/view/View;

    const v5, 0x7f0700ab

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 502
    .local v2, cancelBtn:Landroid/widget/Button;
    new-instance v4, Lcom/android/phone/SpeedDialList$10;

    invoke-direct {v4, p0}, Lcom/android/phone/SpeedDialList$10;-><init>(Lcom/android/phone/SpeedDialList;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    new-instance v4, Lcom/android/phone/SpeedDialList$11;

    invoke-direct {v4, p0}, Lcom/android/phone/SpeedDialList$11;-><init>(Lcom/android/phone/SpeedDialList;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    return-object v0
.end method

.method private createClickDelMenuDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 8
    .parameter "context"

    .prologue
    .line 399
    const-string v5, "SpeedDialList"

    const-string v6, "$$$$ createClickAddMenuDialog..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 404
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0c02a7

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 405
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 406
    .local v0, alertDialog:Landroid/app/AlertDialog;
    iget-object v5, p0, Lcom/android/phone/SpeedDialList;->dialogDelEditView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 407
    const-string v5, "SpeedDialList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "$$$$ OldName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/SpeedDialList;->OldName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v5, p0, Lcom/android/phone/SpeedDialList;->contactDelBtn:Landroid/widget/ImageButton;

    if-nez v5, :cond_0

    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v5}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v5

    .line 410
    :cond_0
    iget-object v5, p0, Lcom/android/phone/SpeedDialList;->contactDelBtn:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/phone/SpeedDialList$5;

    invoke-direct {v6, p0}, Lcom/android/phone/SpeedDialList$5;-><init>(Lcom/android/phone/SpeedDialList;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v5, p0, Lcom/android/phone/SpeedDialList;->dialogDelEditView:Landroid/view/View;

    const v6, 0x7f0700ad

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 418
    .local v3, completeBtn:Landroid/widget/Button;
    iget-object v5, p0, Lcom/android/phone/SpeedDialList;->dialogDelEditView:Landroid/view/View;

    const v6, 0x7f0700ac

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 419
    .local v4, deleteBtn:Landroid/widget/Button;
    iget-object v5, p0, Lcom/android/phone/SpeedDialList;->dialogDelEditView:Landroid/view/View;

    const v6, 0x7f0700ab

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 420
    .local v2, cancelBtn:Landroid/widget/Button;
    new-instance v5, Lcom/android/phone/SpeedDialList$6;

    invoke-direct {v5, p0}, Lcom/android/phone/SpeedDialList$6;-><init>(Lcom/android/phone/SpeedDialList;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    new-instance v5, Lcom/android/phone/SpeedDialList$7;

    invoke-direct {v5, p0}, Lcom/android/phone/SpeedDialList$7;-><init>(Lcom/android/phone/SpeedDialList;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    new-instance v5, Lcom/android/phone/SpeedDialList$8;

    invoke-direct {v5, p0}, Lcom/android/phone/SpeedDialList$8;-><init>(Lcom/android/phone/SpeedDialList;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    return-object v0
.end method

.method private initSpeedDialDiologUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0700aa

    const v3, 0x7f0700a3

    .line 561
    const-string v2, "$$$$ initSpeedDialDiologUI..."

    invoke-static {v2}, Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V

    .line 562
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 564
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04001e

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/SpeedDialList;->dialogEditView:Landroid/view/View;

    .line 565
    iget-object v2, p0, Lcom/android/phone/SpeedDialList;->dialogEditView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/SpeedDialList;->contactBtn:Landroid/widget/ImageButton;

    .line 566
    iget-object v2, p0, Lcom/android/phone/SpeedDialList;->dialogEditView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/SpeedDialList;->editViewNumber:Landroid/widget/EditText;

    .line 569
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 570
    .local v1, inflaterdel:Landroid/view/LayoutInflater;
    const v2, 0x7f04001d

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/SpeedDialList;->dialogDelEditView:Landroid/view/View;

    .line 571
    iget-object v2, p0, Lcom/android/phone/SpeedDialList;->dialogDelEditView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/SpeedDialList;->contactDelBtn:Landroid/widget/ImageButton;

    .line 572
    iget-object v2, p0, Lcom/android/phone/SpeedDialList;->dialogDelEditView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/SpeedDialList;->editViewDelNumber:Landroid/widget/EditText;

    .line 575
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 547
    const-string v0, "SpeedDialList"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$ onActivityResult request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 233
    const-string v0, "$$$$ result -1 "

    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 177
    :pswitch_0
    if-eq p2, v2, :cond_0

    .line 178
    const-string v0, "$$$$ onActivityResult: cancelled."

    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/SpeedDialList;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 183
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    :cond_1
    const-string v0, "SpeedDialList"

    const-string v1, "$$$$ onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$ cursor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/SpeedDialList;->currentKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SpeedDialList;->ReturnName:Ljava/lang/String;

    .line 193
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SpeedDialList;->ReturnNumber:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/android/phone/SpeedDialList;->editViewNumber:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/android/phone/SpeedDialList;->editViewNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/SpeedDialList;->ReturnNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SpeedDialList;->isContactInfo:Z

    .line 197
    iget-object v0, p0, Lcom/android/phone/SpeedDialList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/SpeedDialList;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 204
    .end local v6           #cursor:Landroid/database/Cursor;
    :pswitch_1
    if-eq p2, v2, :cond_3

    .line 205
    const-string v0, "$$$$ onActivityResult: cancelled."

    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/SpeedDialList;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 210
    .local v7, cursorDel:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 211
    :cond_4
    const-string v0, "SpeedDialList"

    const-string v1, "$$$$ onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 216
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$ cursor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/SpeedDialList;->currentKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SpeedDialList;->ReturnName:Ljava/lang/String;

    .line 218
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SpeedDialList;->ReturnNumber:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/android/phone/SpeedDialList;->editViewDelNumber:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/android/phone/SpeedDialList;->editViewDelNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/SpeedDialList;->ReturnNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SpeedDialList;->isContactInfo:Z

    .line 222
    iget-object v0, p0, Lcom/android/phone/SpeedDialList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/SpeedDialList;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 224
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 229
    .end local v7           #cursorDel:Landroid/database/Cursor;
    :pswitch_2
    const-string v0, "$$$$ SPEED_DIAL_VOICE_MAIL_CODE..."

    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    const v1, 0x7f040020

    invoke-virtual {p0, v1}, Lcom/android/phone/SpeedDialList;->setContentView(I)V

    .line 128
    const-string v1, "$$$$ onCreate..."

    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/android/phone/SpeedDialList;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/SpeedDialList;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    invoke-direct {p0}, Lcom/android/phone/SpeedDialList;->initSpeedDialDiologUI()V

    .line 134
    iget-object v1, p0, Lcom/android/phone/SpeedDialList;->editViewNumber:Landroid/widget/EditText;

    new-array v2, v4, [Landroid/text/InputFilter;

    new-instance v3, Lcom/android/phone/SpeedDialList$2;

    invoke-direct {v3, p0}, Lcom/android/phone/SpeedDialList$2;-><init>(Lcom/android/phone/SpeedDialList;)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 148
    iget-object v1, p0, Lcom/android/phone/SpeedDialList;->editViewDelNumber:Landroid/widget/EditText;

    new-array v2, v4, [Landroid/text/InputFilter;

    new-instance v3, Lcom/android/phone/SpeedDialList$3;

    invoke-direct {v3, p0}, Lcom/android/phone/SpeedDialList$3;-><init>(Lcom/android/phone/SpeedDialList;)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 163
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 167
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 365
    :goto_0
    return-object v0

    .line 351
    :pswitch_0
    const-string v1, "$$$$ onCreateDialog..."

    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V

    .line 354
    invoke-direct {p0, p0}, Lcom/android/phone/SpeedDialList;->createClickDelMenuDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    .line 355
    goto :goto_0

    .line 357
    :pswitch_1
    const-string v1, "$$$$ onCreateDialog..."

    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, p0}, Lcom/android/phone/SpeedDialList;->createClickAddMenuDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    .line 361
    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 539
    const-string v0, "SpeedDialList"

    const-string v1, "$$$$ onDestroy ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/android/phone/SpeedDialList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/SpeedDialList;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 542
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 544
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 552
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 553
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 554
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 555
    const/4 v1, 0x1

    .line 557
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method setView()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 240
    const-string v1, "$$$$ setView..."

    invoke-static {v1}, Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V

    .line 241
    const v1, 0x7f0700b2

    invoke-virtual {p0, v1}, Lcom/android/phone/SpeedDialList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/android/phone/SpeedDialList;->speedDialGridView:Landroid/widget/GridView;

    .line 242
    iget-object v1, p0, Lcom/android/phone/SpeedDialList;->mSpeedDialMode:Lcom/android/phone/SpeedDialMode;

    invoke-virtual {v1}, Lcom/android/phone/SpeedDialMode;->getFastDialKeys()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialList;->tmpphoneKey:[I

    .line 243
    iget-object v1, p0, Lcom/android/phone/SpeedDialList;->mSpeedDialMode:Lcom/android/phone/SpeedDialMode;

    invoke-virtual {v1}, Lcom/android/phone/SpeedDialMode;->getFastDialNumbers()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialList;->tmpPhoneNumber:[Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/android/phone/SpeedDialList;->mSpeedDialMode:Lcom/android/phone/SpeedDialMode;

    invoke-virtual {v1}, Lcom/android/phone/SpeedDialMode;->getContactPhoneName()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialList;->tmpphoneName:[Ljava/lang/String;

    .line 246
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v2, lst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "itemImage"

    const v3, 0x7f0200a9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v1, "name"

    const v3, 0x7f0c0055

    invoke-virtual {p0, v3}, Lcom/android/phone/SpeedDialList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/16 v1, 0x8

    if-ge v6, v1, :cond_1

    .line 256
    new-instance v7, Ljava/util/HashMap;

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 257
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/android/phone/SpeedDialList;->tmpphoneKey:[I

    aget v1, v1, v6

    if-lt v1, v8, :cond_0

    iget-object v1, p0, Lcom/android/phone/SpeedDialList;->tmpphoneKey:[I

    aget v1, v1, v6

    const/16 v3, 0x9

    if-gt v1, v3, :cond_0

    .line 259
    const-string v1, "itemImage"

    sget-object v3, Lcom/android/phone/SpeedDialList;->FAST_DIAL_PNG_SOMEONE:[I

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "name"

    iget-object v3, p0, Lcom/android/phone/SpeedDialList;->tmpphoneName:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "number"

    iget-object v3, p0, Lcom/android/phone/SpeedDialList;->tmpPhoneNumber:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :goto_1
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 264
    :cond_0
    const-string v1, "itemImage"

    sget-object v3, Lcom/android/phone/SpeedDialList;->FAST_DIAL_PNG_ADD:[I

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v1, "name"

    const-string v3, ""

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v1, "number"

    const-string v3, ""

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 272
    :cond_1
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f04001f

    new-array v4, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "itemImage"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "name"

    aput-object v5, v4, v1

    const-string v1, "number"

    aput-object v1, v4, v8

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 277
    .local v0, adpter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/android/phone/SpeedDialList;->speedDialGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    iget-object v1, p0, Lcom/android/phone/SpeedDialList;->speedDialGridView:Landroid/widget/GridView;

    new-instance v3, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;

    invoke-direct {v3, p0}, Lcom/android/phone/SpeedDialList$gridView1OnClickListener;-><init>(Lcom/android/phone/SpeedDialList;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 289
    return-void

    .line 272
    :array_0
    .array-data 0x4
        0xaft 0x0t 0x7t 0x7ft
        0xb0t 0x0t 0x7t 0x7ft
        0xb1t 0x0t 0x7t 0x7ft
    .end array-data
.end method
