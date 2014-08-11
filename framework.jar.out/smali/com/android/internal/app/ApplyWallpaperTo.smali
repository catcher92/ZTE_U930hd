.class public Lcom/android/internal/app/ApplyWallpaperTo;
.super Lcom/android/internal/app/AlertActivity;
.source "ApplyWallpaperTo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;,
        Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAdapter:Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;

.field private mIntent:Landroid/content/Intent;

.field private mIntents:[Landroid/content/Intent;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 44
    const-string v0, "ApplyWallpaperTo"

    iput-object v0, p0, Lcom/android/internal/app/ApplyWallpaperTo;->TAG:Ljava/lang/String;

    .line 121
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ApplyWallpaperTo;->setResult(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/app/ApplyWallpaperTo;->finish()V

    .line 107
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 96
    iget-object v2, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mAdapter:Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 97
    .local v1, intent:Landroid/content/Intent;
    const v2, 0x104044f

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ApplyWallpaperTo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 99
    .local v0, chooser:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ApplyWallpaperTo;->startActivity(Landroid/content/Intent;)V

    .line 100
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/app/ApplyWallpaperTo;->setResult(ILandroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/app/ApplyWallpaperTo;->finish()V

    .line 102
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/app/ApplyWallpaperTo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntent:Landroid/content/Intent;

    .line 52
    const-string v1, "android.intent.action.APPLY_WALLPAPER_TO"

    iget-object v2, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/app/ApplyWallpaperTo;->finish()V

    .line 93
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ApplyWallpaperTo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mPm:Landroid/content/pm/PackageManager;

    .line 59
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntents:[Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntents:[Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v5

    .line 61
    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntents:[Landroid/content/Intent;

    aget-object v1, v1, v5

    const-string v2, "android.intent.extra.TITLE"

    const v3, 0x104050b

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ApplyWallpaperTo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntents:[Landroid/content/Intent;

    aget-object v1, v1, v5

    const-string v2, "DrawIconResourceId"

    const v3, 0x10802e0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntents:[Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_LOCKSCREEN_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    .line 65
    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntents:[Landroid/content/Intent;

    aget-object v1, v1, v4

    const-string v2, "android.intent.extra.TITLE"

    const v3, 0x104050c

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ApplyWallpaperTo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntents:[Landroid/content/Intent;

    aget-object v1, v1, v4

    const-string v2, "DrawIconResourceId"

    const v3, 0x10802e1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 69
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 72
    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 78
    :goto_1
    new-instance v1, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;

    iget-object v2, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntents:[Landroid/content/Intent;

    invoke-direct {v1, p0, p0, v2}, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;-><init>(Lcom/android/internal/app/ApplyWallpaperTo;Landroid/content/Context;[Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mAdapter:Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;

    .line 79
    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mAdapter:Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->getCount()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 80
    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mAdapter:Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/app/ApplyWallpaperTo;->setupAlert()V

    goto/16 :goto_0

    .line 75
    :cond_1
    const v1, 0x104050a

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ApplyWallpaperTo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mAdapter:Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->getCount()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 82
    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mAdapter:Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;

    invoke-virtual {v1, v5}, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ApplyWallpaperTo;->startActivity(Landroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/app/ApplyWallpaperTo;->finish()V

    goto/16 :goto_0

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is have no app with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/app/ApplyWallpaperTo;->finish()V

    goto/16 :goto_0
.end method
