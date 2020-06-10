package main

import "github.com/spf13/cobra"

var rootCmd *cobra.Command

var (
	port int
)

func init() {
	rootCmd = &cobra.Command{
		Run: func(cmd *cobra.Command, args []string) {
			serve(port)
		},
	}
	rootCmd.Flags().IntVarP(&port, "port", "o", 9696, "listen port")
}

func Execute() {
	rootCmd.Execute()
}
