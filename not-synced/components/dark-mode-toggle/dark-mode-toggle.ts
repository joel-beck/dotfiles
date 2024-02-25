function prefersSystemDarkmode(): boolean {
	return window.matchMedia("(prefers-color-scheme: dark)").matches;
}

function setDarkmode(): void {
	document.documentElement.classList.add("dark");
}

export function toggleDarkmode(): void {
	document.documentElement.classList.toggle("dark");
}

export function setInitialTheme(
	darkmodeToggleCheckbox: HTMLInputElement,
): void {
	if (prefersSystemDarkmode()) {
		setDarkmode();
		darkmodeToggleCheckbox.checked = true;
		return;
	}

	darkmodeToggleCheckbox.checked = false;
}


function main(): void {
	const darkmodeToggleId = "darkModeToggle";
	const darkmodeToggleCheckbox = document.getElementById(
		darkmodeToggleId,
	) as HTMLInputElement;

	if (!(darkmodeToggleCheckbox instanceof HTMLElement)) {
		throw new Error("#darkmodeToggle not found");
	}

	document.addEventListener("htmx:load", () => {
		setInitialTheme(darkmodeToggleCheckbox);
	});

	darkmodeToggleCheckbox.addEventListener("change", toggleDarkmode);
}

main();
