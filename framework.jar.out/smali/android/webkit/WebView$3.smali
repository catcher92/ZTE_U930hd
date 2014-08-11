.class Landroid/webkit/WebView$3;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$resumeMsg:Landroid/os/Message;

.field final synthetic val$schemePlusHost:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1433
    iput-object p1, p0, Landroid/webkit/WebView$3;->this$0:Landroid/webkit/WebView;

    iput-object p2, p0, Landroid/webkit/WebView$3;->val$schemePlusHost:Ljava/lang/String;

    iput-object p3, p0, Landroid/webkit/WebView$3;->val$username:Ljava/lang/String;

    iput-object p4, p0, Landroid/webkit/WebView$3;->val$password:Ljava/lang/String;

    iput-object p5, p0, Landroid/webkit/WebView$3;->val$resumeMsg:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1436
    iget-object v0, p0, Landroid/webkit/WebView$3;->this$0:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebView$3;->val$schemePlusHost:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/WebView$3;->val$username:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/WebView$3;->val$password:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/WebView$3;->val$resumeMsg:Landroid/os/Message;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->sendNeverRememberMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1437
    return-void
.end method
